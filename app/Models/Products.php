<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id_product';
    
    // Relación con la tabla Category (relación uno a uno o uno a muchos)
    public function category()
    {
        return $this->belongsTo(Category::class, 'id_category', 'id_category');
    }

    // Relación con la tabla Brand (relación uno a uno o uno a muchos)
    public function brand()
    {
        return $this->belongsTo(Brand::class, 'id_brand', 'id_brand');
    }

    // Relación con la tabla Brand (relación uno a uno o uno a muchos)
    public function photos()
    {
        return $this->hasMany(ProductsImages::class, 'id_product_image', 'id_product');
    }
}