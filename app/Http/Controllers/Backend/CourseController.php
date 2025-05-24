<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Author;
use App\Models\Category;
use App\Models\Childcategory;
use App\Models\Childsubcategory;
use App\Models\Course;
use App\Models\Instructor;
use App\Models\Lesson;
use App\Models\McqOption;
use App\Models\McqQuestion;
use App\Models\Module;
use App\Models\Quiz;
use App\Models\Faq;
use App\Models\QuizOption;
use App\Models\Subcategory;
use App\Models\Video;
use App\Models\Written;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class CourseController extends Controller {
    public function courses() {
        $courses = Course::orderBy('id', 'desc')->where('category_id', '>', 0)->get();

        return view('backend.courses.index', compact('courses'));
    }

    public function create() {
        $data                = [];
        $data['categories']  = Category::where('status', 1)->where('id', '>', 0)->get();
        $data['instructors'] = Instructor::where('status', 1)->get();

        return view('backend.courses.create', $data);
    }

    public function store(Request $request) {
        
        $validator = Validator::make($request->all(), [
            'details'        => 'required',
            'course_name'    => 'required',
            'price'          => 'required',
            'thumbnil_image' => 'required|image|mimes:jpeg,png,jpg,gif,webp',
            'details_file'   => 'nullable|mimes:pdf',
            'instructor'     => 'required',
            'instructor_commision' => 'required'
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        if ($request->hasFile('thumbnil_image')) {

            $image_file = $request->file('thumbnil_image');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/course/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name       = $img_gen . '.' . $image_ext;
                $thumbnil_image = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        if ($request->hasFile('certificate_image')) {

            $certificate_image_file = $request->file('certificate_image');

            if ($certificate_image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/courses/certificate/';
                $image_ext = strtolower($certificate_image_file->getClientOriginalExtension());

                $img_name          = $img_gen . '.' . $image_ext;
                $certificate_image = $image_url . $img_gen . '.' . $image_ext;

                $certificate_image_file->move($image_url, $img_name);
            }

        }

        if ($request->hasFile('details_file')) {

            $image_file = $request->file('details_file');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/courses/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name     = $img_gen . '.' . $image_ext;
                $details_file = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        $course = Course::create([
            'instructor_id'        => $request->instructor,
            'category_id'          => $request->category_id,
            'subcategory_id'       => $request->subcategory_id,
            'childcategory_id'     => $request->childcategory_id,
            'childsubcategory_id'  => $request->childsubcategory_id,
            'name'                 => $request->course_name,
            'price'                => $request->price - $request->discount_price,
            'old_price'            => $request->price,
            'discount'             => $request->discount,
            'discount_price'       => $request->discount_price,
            'instructor_commision' => $request->instructor_commision,
            'details'              => $request->details,
            'details_file'         => $details_file ?? null,
            'thumbnil_image'       => $thumbnil_image ?? null,
            'certificate_image'    => $certificate_image ?? null,
            'certificate_text'     => $request->certificate_text,
            'trending'             => $request->trending ? true : false,
            'featured'             => $request->featured ? true : false,
            'favorite'             => $request->favorite ? true : false,
            'common'               => $request->common ? true : false,
        ]);
        
        foreach($request->questions as $index=>$question){
            if($question){
                $faqs = Faq::create([
                    'course_id' => $course->id,
                    'question'  => $question,
                    'answer'    => $request->answers[$index]
                ]);
                
            }
        }

        return redirect()->route('admin.courses.index')->with('success', 'Your courses submitted successfully!!');
    }

    public function edit($id) {
        $course      = Course::where('id', $id)->first();
        $categories  = Category::where('status', 1)->where('id', '>', 0)->get();
        $sub         = Subcategory::where('id', $course->subcategory_id)->where('status', 1)->get();
        $child       = Childcategory::where('id', $course->childcategory_id)->where('status', 1)->get();
        $childsub    = Childsubcategory::where('id', $course->childsubcategory_id)->where('status', 1)->get();
        $instructors = Instructor::where('status', 1)->get();

        return view('backend.courses.edit', compact('course', 'categories', 'sub', 'child', 'childsub', 'instructors'));
    }

    public function update(Request $request, $id) {
        $course    = Course::where('id', $id)->first();
        $validator = Validator::make($request->all(), [
            'details'        => 'required',
            'course_name'    => 'required',
            'price'          => 'required',
            'thumbnil_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,webp',
            'details_file'   => 'nullable|mimes:pdf',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        if ($request->hasFile('thumbnil_image')) {

            $image_file = $request->file('thumbnil_image');

            if ($image_file) {

                if ($course->thumbnil_image) {
                    $thumbnil_image_image_path = public_path($course->thumbnil_image);

                    if (File::exists($thumbnil_image_image_path)) {
                        File::delete($thumbnil_image_image_path);
                    }

                }

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/courses/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name       = $img_gen . '.' . $image_ext;
                $thumbnil_image = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
                $course->update(['thumbnil_image' => $thumbnil_image]);
            }

        }

        if ($request->hasFile('certificate_image')) {

            $certificate_image_file = $request->file('certificate_image');

            if ($certificate_image_file) {

                if ($course->certificate_image) {
                    $certificate_image_image_path = public_path($course->certificate_image);

                    if (File::exists($certificate_image_image_path)) {
                        File::delete($certificate_image_image_path);
                    }

                }

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/courses/certificate/';
                $image_ext = strtolower($certificate_image_file->getClientOriginalExtension());

                $img_name          = $img_gen . '.' . $image_ext;
                $certificate_image = $image_url . $img_gen . '.' . $image_ext;

                $certificate_image_file->move($image_url, $img_name);
                $course->update(['certificate_image' => $certificate_image]);
            }

        }

        if ($request->hasFile('details_file')) {

            $image_file = $request->file('details_file');

            if ($image_file) {

                if ($course->details_file) {
                    $details_file_image_path = public_path($course->details_file);

                    if (File::exists($details_file_image_path)) {
                        File::delete($details_file_image_path);
                    }

                }

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/courses/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name     = $img_gen . '.' . $image_ext;
                $details_file = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
                $course->update(['details_file' => $details_file]);
            }

        }

        $course->update([
            'category_id'          => $request->category_id,
            'subcategory_id'       => $request->subcategory_id,
            'childcategory_id'     => $request->childcategory_id,
            'childsubcategory_id'  => $request->childsubcategory_id,
            'name'                 => $request->course_name,
            'price'                => $request->price - $request->discount_price,
            'old_price'            => $request->price,
            'discount'             => $request->discount,
            'discount_price'       => $request->discount_price,
            'instructor_commision' => $request->instructor_commision,
            'details'              => $request->details,
            'certificate_text'     => $request->certificate_text,
            'trending'             => $request->trending ? true : false,
            'featured'             => $request->featured ? true : false,
            'favorite'             => $request->favorite ? true : false,
            'common'               => $request->common ? true : false,
        ]);
        
        foreach($request->questions as $index=>$question){
            if($question){
                $faqs = Faq::create([
                    'course_id' => $course->id,
                    'question'  => $question,
                    'answer'    => $request->answers[$index]
                ]);
                
            }
        }

        return to_route('admin.courses.index')->with('success', 'Your courses updated successfully!!');
    }

    public function active(Request $request, $id) {
        $course = Course::findOrFail($id);

        $course->status = 1;
        $course->save();

        return redirect()->route('admin.courses.index')->with('success', 'Course activated successfully!!');
    }

    public function inactive(Request $request, $id) {
        $course = Course::findOrFail($id);

        $course->status = 0;
        $course->save();

        return redirect()->route('admin.courses.index')->with('success', 'Course inactivated successfully!!');
    }

    public function delete($id) {
        $author = Author::where('course_id', $id)->delete();


        $course = Course::where('id', $id)
        ->with('modules.lessons.videos', 'modules.lessons.quizzes')
        ->first();


        if ($course) {
        $moduleIds = [];
        $lessonIds = [];
        $videoIds = [];
        $quizIds = [];

        // Loop through modules
        foreach ($course->modules as $module) {
            $moduleIds[] = $module->id;
           
            // Loop through lessons
            foreach ($module->lessons as $lesson) {
                $lessonIds[] = $lesson->id;
           
                // Get related video IDs
                foreach ($lesson->videos as $video) {
                    $videoIds[] = $video->id;
                }
           
                // Get related quiz IDs
                foreach ($lesson->quizzes as $quiz) {
                    $quizIds[] = $quiz->id;
           
                    // Delete related quiz options first
                    QuizOption::where('quiz_id', $quiz->id)->delete();
                }
            }
        }
              
                  
         foreach ($quizIds as $quiz) {
             Quiz::find($quiz)->delete();
         }
              
         foreach ($videoIds as $video) {
             Video::find($video)->delete();
         }
              
         foreach ($lessonIds as $lesson) {
             Lesson::find($lesson)->delete();
         }
              
         foreach ($moduleIds as $module) {
             Module::find($module)->delete();
         }
              
    
         $course->delete();
}

// Redirect back with success message
return redirect()->back()->with('success', 'Course deleted successfully');
    }

    public function modules($id) {
        $course  = Course::find($id);
        $modules = Module::where('course_id', $id)->get();

        return view('backend.courses.modules', compact('modules', 'course'));
    }

    public function addmodule($id) {
        $course = Course::find($id);

        return view('backend.courses.module-add', compact('course'));
    }

    public function modulestore(Request $request) {
        $validator = Validator::make($request->all(), [
            'names' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        foreach ($request->names as $key => $name) {

            if ($name) {
                $image_file   = null;
                $module_image = null;

                if (isset($request->images[$key])) {
                    $image_file = $request->images[$key];
                }

                if ($image_file) {

                    $img_gen   = hexdec(uniqid());
                    $image_url = 'images/modules/';
                    $image_ext = strtolower($image_file->getClientOriginalExtension());

                    $img_name     = $img_gen . '.' . $image_ext;
                    $module_image = $image_url . $img_gen . '.' . $image_ext;

                    $image_file->move($image_url, $img_name);
                }

                Module::create([
                    'course_id'   => $request->course_id,
                    'name'        => $name,
                    'description' => $request->descriptions[$key],
                    'image'       => $module_image,
                ]);
            }

        }

        return redirect()->route('admin.courses.modules', $request->course_id)->with('Modules added successfully!!');
    }

    public function moduleedit($id) {
        $module = Module::find($id);

        return view('backend.courses.module-edit', compact('module'));
    }

    public function moduleupdate(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        $image_file   = $request->image;
        $module_image = null;

        if ($image_file) {

            $img_gen   = hexdec(uniqid());
            $image_url = 'images/modules/';
            $image_ext = strtolower($image_file->getClientOriginalExtension());

            $img_name     = $img_gen . '.' . $image_ext;
            $module_image = $image_url . $img_gen . '.' . $image_ext;

            $image_file->move($image_url, $img_name);
        }

        $module = Module::find($request->module_id);
        $module->update([
            'name'        => $request->name,
            'description' => $request->description,
            'image'       => $module_image,
        ]);

        return redirect()->route('admin.courses.modules', $module->course_id)->with('success', 'Module updated successfully');
    }

    public function moduledelete(Request $request) {
        Module::find($request->module_id)->delete();

        return redirect()->back()->with('success', 'Module deleted successfully');
    }

    public function lessons($id) {
        
        $module  = Module::find($id);
        $lessons = Lesson::where('module_id', $id)->get();

        return view('backend.courses.lessons', compact('lessons', 'module'));
    }

    public function lessonadd($id) {
        $module = Module::find($id);

        return view('backend.courses.lesson-add', compact('module'));
    }

    public function lessonstore(Request $request) {
        $validator = Validator::make($request->all(), [
            'names' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        foreach ($request->names as $key => $name) {

            if ($name) {
                $image_file   = null;
                $lesson_image = null;

                if (isset($request->images[$key])) {
                    $image_file = $request->images[$key];
                }

                if ($image_file) {

                    $img_gen   = hexdec(uniqid());
                    $image_url = 'images/lessons/';
                    $image_ext = strtolower($image_file->getClientOriginalExtension());

                    $img_name     = $img_gen . '.' . $image_ext;
                    $lesson_image = $image_url . $img_gen . '.' . $image_ext;

                    $image_file->move($image_url, $img_name);
                }

                Lesson::create([
                    'module_id'   => $request->module_id,
                    'name'        => $name,
                    'description' => $request->descriptions[$key],
                    'image'       => $lesson_image,
                ]);
            }

        }

        return redirect()->route('admin.courses.module.lessons', $request->module_id)->with('Lessons added successfully!!');
    }

    public function lessonedit($id) {
        $lesson = Lesson::find($id);

        return view('backend.courses.lesson-edit', compact('lesson'));
    }
    
    public function add_pdf($id){
         $lesson = Lesson::find($id);
         $pdfs = DB::table('pdf')->where('lession_id',$id)->get();
         return view('backend.courses.add_pdf',compact('lesson','pdfs'));
    }
    public function add_pdf_page($id){
        
         $lesson = Lesson::find($id);
         return view('backend.courses.pdf_add_page', compact('lesson'));
        
    }
    
     public function pdf_add_post(Request $request){
     
    $validated = $request->validate([
        'lesson_id' => 'required|integer',
        'pdf' => 'required|mimes:pdf|max:2048', // Max 2MB
        'status'=>'required',
    ]);
       $lesson = Lesson::find($request->lesson_id);
      
   
    if ($request->hasFile('pdf')) {
      
        $pdf_gen = hexdec(uniqid());
        
        
        $pdf_url = 'pdf/lessons/';
        
        
        $pdf_ext = strtolower($request->file('pdf')->getClientOriginalExtension());

        
        $pdf_name = $lesson->name . $pdf_gen . '.' . $pdf_ext;
        $pdf_full_path = $pdf_url . $pdf_name;

      
        $request->file('pdf')->move($pdf_url, $pdf_name);

      
        DB::table('pdf')->insert([
            'lession_id' => $request->input('lesson_id'),
            'pdf' => $pdf_full_path,
           
            'status'=>$request->status,
            
            'created_at' => now(),
            'updated_at' => now(),
        ]);

       
    }
         return redirect()->route('admin.courses.module.add_pdf', $request->lesson_id)->with('PDF added successfully!!');
   
     }
     
     public function pdf_edit_post(Request $request){
       
           $pdf = DB::table('pdf')->where('id',$request->pdf_id)->first();
           $lesson = Lesson::find($pdf->lession_id);
            
         if($request->hasFile('pdf')){
          
            if ($pdf) {
               
      
               $existingPdfPath = public_path($pdf->pdf);
        
       
        if (file_exists($existingPdfPath)) {
           
           unlink($existingPdfPath);
        }
        
       $pdf_gen = hexdec(uniqid());
        $pdf_url = 'pdf/lessons/';
        
        
        $pdf_ext = strtolower($request->file('pdf')->getClientOriginalExtension());

        
        $pdf_name = $lesson->name . $pdf_gen . '.' . $pdf_ext;
        $pdf_full_path = $pdf_url . $pdf_name;

      
        $request->file('pdf')->move($pdf_url, $pdf_name);
           DB::table('pdf')->where('id', $request->pdf_id)->update([
        'pdf' => $pdf_full_path,
        'status' => $request->status,
        'updated_at' => now(),
        ]);
    }
         return back()->with('success',"Successfully Changed");
        

         }
         else{
               DB::table('pdf')->where('id', $request->pdf_id)->update([
                  
                  'status' => $request->status,
                  'updated_at' => now(),
                 ]);
                  
             return back()->with('success',"Successfylly Changed The status");
         }
                  
       
         
     }
     public function delete_pdf($id){
 
          DB::table('pdf')->where('id', $id)->delete();
  
          return back()->with('success', 'successfully deleted');
        
     }

    public function lessonupdate(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        $image_file   = $request->image;
        $lesson_image = null;

        if ($image_file) {

            $img_gen   = hexdec(uniqid());
            $image_url = 'images/lessons/';
            $image_ext = strtolower($image_file->getClientOriginalExtension());

            $img_name     = $img_gen . '.' . $image_ext;
            $lesson_image = $image_url . $img_gen . '.' . $image_ext;

            $image_file->move($image_url, $img_name);
        }

        $lesson = Lesson::find($request->lesson_id);
        $lesson->update([
            'name'        => $request->name,
            'description' => $request->description,
            'image'       => $lesson_image,
        ]);

        return redirect()->route('admin.courses.module.lessons', $lesson->module_id)->with('success', 'Lesson updated successfully');
    }

    public function lessondelete(Request $request) {
        Lesson::find($request->lesson_id)->delete();

        return redirect()->back()->with('success', 'lesson deleted successfully');
    }

    public function videos($id) {
        $lesson = Lesson::find($id);
        $videos = Video::where('lesson_id', $id)->get();

        return view('backend.courses.videos', compact('lesson', 'videos'));
    }

    public function videoadd($id) {
        $lesson = Lesson::find($id);

        return view('backend.courses.video-add', compact('lesson'));
    }
    
    
    public function videostore(Request $request) {
        $validator = Validator::make($request->all(), [
            'names' => 'required',
            'links' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        foreach ($request->names as $key => $name) {

            if ($name) {
                $image_file  = null;
                $video_image = null;

                if (isset($request->images[$key])) {
                    $image_file = $request->images[$key];
                }

                if ($image_file) {

                    $img_gen   = hexdec(uniqid());
                    $image_url = 'images/videos/';
                    $image_ext = strtolower($image_file->getClientOriginalExtension());

                    $img_name    = $img_gen . '.' . $image_ext;
                    $video_image = $image_url . $img_gen . '.' . $image_ext;

                    $image_file->move($image_url, $img_name);
                }

                Video::create([
                    'lesson_id' => $request->lesson_id,
                    'name'      => $name,
                    'link'      => $request->links[$key],
                    'image'     => $video_image,
                ]);
            }

        }

        return redirect()->route('admin.courses.module.lesson.videos', $request->lesson_id)->with('Videos added successfully!!');
    }

    public function videoedit($id) {
        $video = Video::find($id);

        return view('backend.courses.video-edit', compact('video'));
    }

    public function videoupdate(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'link' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        $image_file  = $request->image;
        $video_image = null;

        if ($image_file) {

            $img_gen   = hexdec(uniqid());
            $image_url = 'images/videos/';
            $image_ext = strtolower($image_file->getClientOriginalExtension());

            $img_name    = $img_gen . '.' . $image_ext;
            $video_image = $image_url . $img_gen . '.' . $image_ext;

            $image_file->move($image_url, $img_name);
        }

        $video = Video::find($request->video_id);
        $video->update([
            'name'  => $request->name,
            'link'  => $request->link,
            'free'  => $request->free ? true : false,
            'image' => $video_image,
        ]);

        return redirect()->route('admin.courses.module.lesson.videos', $video->lesson_id)->with('success', 'Video updated successfully');
    }

    public function videodelete(Request $request) {
        Video::find($request->video_id)->delete();

        return redirect()->back()->with('success', 'Video deleted successfully');
    }

    //  section
    public function quizzes($id) {
        $lesson  = Lesson::find($id);
        $quizzes = Quiz::where('lesson_id', $id)->get();

        return view('backend.courses.quizzes', compact('lesson', 'quizzes'));
    }

    public function quizadd($id) {
        $lesson = Lesson::find($id);

        return view('backend.courses.quiz-add', compact('lesson'));
    }

    public function quizzestore(Request $request) {
        $validator = Validator::make($request->all(), [
            'names' => 'required',
            'timer' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        foreach ($request->names as $key => $name) {

            if ($name) {
                $image_file = null;
                $quiz_image = null;

                if (isset($request->images[$key])) {
                    $image_file = $request->images[$key];
                }

                Quiz::create([
                    'lesson_id' => $request->lesson_id,
                    'name'      => $name,
                    'timer'     => $request->timer[$key],
                ]);
            }

        }

        return redirect()->route('admin.courses.module.lesson.quizzes', $request->lesson_id)->with('Videos added successfully!!');
    }

    public function quizedit($id) {
        $quiz = Quiz::find($id);

        return view('backend.courses.quiz-edit', compact('quiz'));
    }

    public function quizupdate(Request $request) {
        $validator = Validator::make($request->all(), [
            'name'  => 'required',
            'timer' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        $quiz = Quiz::find($request->quiz_id);
        $quiz->update([
            'name'  => $request->name,
            'timer' => $request->timer,
        ]);

        return redirect()->route('admin.courses.module.lesson.quizzes', $quiz->lesson_id)->with('success', 'Quiz updated successfully');
    }

    public function quizdelete(Request $request) {
        Quiz::find($request->quiz_id)->delete();

        return redirect()->back()->with('success', 'Quiz deleted successfully');
    }

// quiz section ended

    // McqQuestion section
    public function questions($id) {
        $quiz = Quiz::find($id);

        $questions = McqQuestion::with('options')->where('quiz_id', $id)->get();

        return view('backend.courses.questions', compact('quiz', 'questions'));
    }

    public function questionadd($id) {
        $quiz = Quiz::find($id);

        return view('backend.courses.question-add', compact('quiz'));
    }

    public function questionstore(Request $request) {
        $validator = Validator::make($request->all(), [
            'question' => 'required',
            'options'  => 'required',
            'answer'   => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->with('error', $validator->messages()->first());
        }

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/questions/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name = $img_gen . '.' . $image_ext;
                $image    = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        $question = McqQuestion::create([
            'quiz_id'  => $request->quiz_id,
            'question' => $request->question,
            'answer'   => $request->answer,
            'image'    => $image ?? null,
        ]);

        foreach ($request->options as $key => $option) {

            if ($option) {
                McqOption::create([
                    'quiz_id'     => $request->quiz_id,
                    'mcq_ques_id' => $question->id,
                    'option'      => $request->options[$key],
                    'isAnswer'    => $request->answer == $key + 1 ? true : false,
                ]);
            }

        }

        return redirect()->back()->with('success', 'Question added successfully!!');
    }

    public function questionedit($id) {
        $question = McqQuestion::with('options')->find($id);

        return view('backend.courses.question-edit', compact('question'));
    }

    public function questionupdate(Request $request) {
        $validator = Validator::make($request->all(), [
            'question' => 'required',
            'options'  => 'required',
            'answer'   => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->with('error', $validator->messages()->first());
        }

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/questions/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name = $img_gen . '.' . $image_ext;
                $image    = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        $question = McqQuestion::find($request->question_id);
        $question->update([
            'question' => $request->question,
            'answer'   => $request->answer,
            'image'    => $image ?? $question->image,
        ]);

        foreach ($request->options as $key => $option) {

            if ($option) {
                McqOption::find($request->option_ids[$key])->update([
                    'option'   => $request->options[$key],
                    'isAnswer' => $request->answer == $key + 1 ? true : false,
                ]);
            }

        }

        return redirect()->route('admin.courses.module.lesson.quiz.questions', $question->quiz_id)->with('success', 'McqQuestion updated successfully');
    }

    public function questiondelete(Request $request) {
        McqQuestion::find($request->question_id)->delete();
        McqOption::where('mcq_ques_id', $request->question_id)->delete();

        return redirect()->back()->with('success', 'McqQuestion deleted successfully');
    }

    // question section ended

    public function addQuiz($id) {
        $course = Course::findOrFail($id);

        return view('backend.courses.add-quiz', compact('id', 'course'));
    }

    public function storeQuiz(Request $request, $id) {

        if (!$this->checkValidity($id)) {
            return back()->withToastInfo('Oops! You are going to die.');
        }

        $validator = Validator::make($request->all(), [
            'name'  => 'required',
            'point' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->first())->withInput();
        }

        $quiz = Quiz::create([
            'instructor_id' => auth()->guard('instructor')->user()->id,
            'course_id'     => $id,
            'name'          => $request->name,
            'points'        => $request->point,
        ]);

        foreach ($request->option as $key => $option) {

            if ($option) {
                QuizOption::create([
                    'quiz_id'  => $quiz->id,
                    'option'   => $option,
                    'isAnswer' => $request->isAnswer[$key],
                ]);
            }

        }

        return redirect()->back()->with('success', 'Quiz added successfully!!');

    }

    public function addQuestion($id) {
        $course = Course::findOrFail($id);

        return view('backend.courses.add-question', compact('id', 'course'));
    }

    public function storeQuestion(Request $request, $id) {

        if (!$this->checkValidity($id)) {
            return back()->withToastInfo('Oops! You are going to die.');
        }

        foreach ($request->question as $key => $name) {

            if ($name) {
                Written::create([
                    'instructor_id' => auth()->guard('instructor')->user()->id,
                    'course_id'     => $id,
                    'name'          => $name,
                    'answer'        => $request->answer[$key],
                    'points'        => $request->point[$key],
                ]);
            }

        }

        return redirect()->back()->with('success', 'Question added successfully!!');

    }

    public function addAuthor($id) {
        $course = Course::findOrFail($id);

        return view('backend.courses.add-author', compact('id', 'course'));
    }

    public function storeAuthor(Request $request, $id) {

        if (!$this->checkValidity($id)) {
            return back()->withToastInfo('Oops! You are going to die.');
        }

        foreach ($request->author as $key => $name) {

            if ($name) {
                Author::create([
                    'instructor_id' => auth()->guard('instructor')->user()->id,
                    'course_id'     => $id,
                    'name'          => $name,
                    'institution'   => $request->institution[$key],
                    'designation'   => $request->designation[$key],
                ]);
            }

        }

        return redirect()->back()->with('success', 'Author added successfully!!');

    }

    public function addVideo($id) {
        $course = Course::findOrFail($id);

        return view('backend.courses.add-video', compact('id', 'course'));
    }

    public function storeVideo(Request $request, $id) {

        if (!$this->checkValidity($id)) {
            return back()->withToastInfo('Oops! You are going to die.');
        }

        foreach ($request->video as $key => $name) {

            if ($name) {
                Video::create([
                    'instructor_id' => auth()->guard('instructor')->user()->id,
                    'course_id'     => $id,
                    'name'          => $name,
                    'link'          => $request->link[$key],
                    'duration'      => $request->duration[$key],
                ]);
            }

        }

        return redirect()->back()->with('success', 'Video added successfully!!');

    }

    private function checkValidity($id) {
        $course = Course::where('id', $id)->where('instructor_id', auth()->guard('instructor')->user()->id)->first();

        if ($course) {
            $course->update(['updated_at' => now()]);

            return true;
        } else {
            return false;
        }

    }
    
    public function faqupdate(Request $request){
        $faq = Faq::find($request->hidden_id);
        
        if(!$faq){
            return redirect()->back()->with('error', 'FAQ not found');
        }
        
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->save();
        
        return redirect()->back()->with('success', 'FAQ updated');
    }
    
    public function faqdelete(Request $request){
        $faq = Faq::find($request->id);
        if(!$faq){
            return redirect()->back()->with('error', 'FAQ not found');
        }
        
        $faq->delete();
        
        return redirect()->back()->with('success', 'FAQ deleted');
    }

}
