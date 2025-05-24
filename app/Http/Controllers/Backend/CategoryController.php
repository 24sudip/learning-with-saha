<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller {
    public function index() {
        $categories = Category::all();

        return view('backend.category.index', compact('categories'));
    }

    public function create() {
        return view('backend.category.create');
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'name'  => 'required|unique:categories',
            'image' => 'required|mimes:jpg,jpeg,png,.gif',
        ]);

        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all())->withInput();
        }

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/category/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name    = $img_gen . '.' . $image_ext;
                $final_name1 = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        Category::create([
            'name'        => $request->name,
            'image'       => $final_name1,
            'icon'        => $request->icon,
            'description' => $request->description,
            'front_page'  => $request->front_page ? true : false,
            'favourite'  => $request->favourite ? true : false,
        ]);

        return to_route('admin.category.index')->withToastSuccess('New data added successfully!!');
    }

    public function edit(Category $category) {
        return view('backend.category.edit', compact('category'));
    }

    public function update(Request $request, Category $category) {
        $validator = Validator::make($request->all(), [
            'name'  => 'required|unique:categories,name,' . $category->id,
            'image' => 'nullable|mimes:jpg,jpeg,png,.gif',
        ]);

        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all())->withInput();
        }

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $image_path = public_path($category->image);

                if (File::exists($image_path)) {
                    File::delete($image_path);
                }

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/category/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name    = $img_gen . '.' . $image_ext;
                $final_name1 = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
                $category->image = $final_name1;
                $category->save();

            }

        }

        $category->update([
            'name'        => $request->name,
            'icon'        => $request->icon,
            'description' => $request->description,
            'front_page'  => $request->front_page ? true : false,
            'favourite'  => $request->favourite ? true : false,
        ]);

        return to_route('admin.category.index')->withToastSuccess('Data updated successfully!!');
    }

    public function active(Request $request, Category $category) {
        $category->status = 1;
        $category->save();

        return to_route('admin.category.index')->withToastSuccess('Data activated successfully!!');
    }

    public function inactive(Request $request, Category $category) {
        $category->status = 0;
        $category->save();

        return to_route('admin.category.index')->withToastSuccess('Data inactivated successfully!!');
    }

}
