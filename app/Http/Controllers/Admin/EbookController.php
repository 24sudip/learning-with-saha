<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Ebook;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class EbookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.ebook.index', [
            'ebooks' => Ebook::latest()->get(['id','photo','title','buy','level','price'])
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.ebook.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'photo' => 'required|image|max:10240',
            'title' => 'required|string|max:255',
            'description' => 'required',
            'price' => 'required|numeric',
            'buy' => 'required',
            'level' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }
        $ebook        = new Ebook();
        if ($request->hasFile('photo')) {
            // if (File::exists(public_path($hero->image))) {
            //     File::delete(public_path($hero->image));
            // }
            $image = $request->file('photo');
            $imageName = rand().'-'.time().$image->getClientOriginalName();
            $image->move(public_path('/images/ebook'), $imageName);
            $imagePath = "/images/ebook/". $imageName;
            // dd($imagePath);
        }
        $ebook->photo = isset($imagePath) ? $imagePath : 'photo';
        $ebook->title = $request->title;
        $ebook->description = $request->description;
        $ebook->price = $request->price;
        $ebook->buy = $request->buy;
        $ebook->level = $request->level;
        $ebook->save();
        return redirect()->route('admin.ebook.index')->with('success', 'Ebook Added!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Ebook $ebook)
    {
        return view('admin.ebook.edit', compact('ebook'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Ebook $ebook)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'photo' => 'nullable|image|max:10240',
            'title' => 'required|string|max:255',
            'description' => 'required',
            'price' => 'required|numeric',
            'buy' => 'required',
            'level' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }
        if ($request->hasFile('photo')) {
            if (File::exists(public_path($ebook->photo))) {
                File::delete(public_path($ebook->photo));
            }
            $image = $request->file('photo');
            $imageName = rand().'-'.time().$image->getClientOriginalName();
            $image->move(public_path('/images/ebook'), $imageName);
            $imagePath = "/images/ebook/". $imageName;
            // dd($imagePath);
        }
        $ebook->photo = isset($imagePath) ? $imagePath : $ebook->photo;
        $ebook->title = $request->title;
        $ebook->description = $request->description;
        $ebook->price = $request->price;
        $ebook->buy = $request->buy;
        $ebook->level = $request->level;
        $ebook->save();
        return redirect()->route('admin.ebook.index')->with('success', 'Ebook Updated!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ebook $ebook)
    {
        if (File::exists(public_path($ebook->photo))) {
            File::delete(public_path($ebook->photo));
        }
        $ebook->delete();
        return redirect()->route('admin.ebook.index')->with('success', 'Ebook Deleted!');
    }
}
