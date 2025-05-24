<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model {
    use HasFactory;
    protected $guarded = [];
    public function videos() {
        return $this->hasMany(Video::class);
    }

    public function quizzes() {
        return $this->hasMany(Quiz::class);
    }

    public function written() {
        return $this->hasMany(Written::class);
    }

    public function authors() {
        return $this->hasMany(Author::class);
    }
    
    public function supports() {
        return $this->hasMany(Support::class);
    }

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function subcategory() {
        return $this->belongsTo(Subcategory::class);
    }

    public function childcategory() {
        return $this->belongsTo(Childcategory::class);
    }

    public function childsubcategory() {
        return $this->belongsTo(Childsubcategory::class);
    }

    public function instructor() {
        return $this->belongsTo(Instructor::class);
    }

    public function ratingReview() {
        return $this->hasMany(RatingReview::class);
    }

    public function modules() {
        return $this->hasMany(Module::class);
    }
    
    public function faqs() {
        return $this->hasMany(Faq::class);
    }

    public function schedules() {
        return $this->hasMany(Weekschedule::class);
    }
    
    public function instructor_notices() {
        return $this->hasMany(Notice::class)->whereIn('sent_to', [0, 1]);
    }
    
    public function student_notices() {
        return $this->hasMany(Notice::class)->whereIn('sent_to', [0, 2]);
    }
}
