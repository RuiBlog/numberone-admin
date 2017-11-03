package com.numberONe.entity;

import com.numberONe.annotation.TableSeg;
import com.numberONe.util.FormMap;

@TableSeg(tableName = "student", id="id")
public class StudentFormMap extends FormMap<String,Object> {
	
	private static final long serialVersionUID = 1L;
}
