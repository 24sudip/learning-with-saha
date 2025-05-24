<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model {
    use HasFactory;
    protected $guarded = [];

    public function videos() {
        return $this->hasMany(Video::class);
    }

    public function quizzes() {
        return $this->hasMany(Quiz::class);
    }

    public function module() {
        return $this->belongsTo(Module::class);
    }
}
