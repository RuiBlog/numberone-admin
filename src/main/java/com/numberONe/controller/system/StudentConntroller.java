package com.numberONe.controller.system;

import javax.inject.Inject;

import com.numberONe.annotation.SystemLog;
import com.numberONe.entity.RoleFormMap;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.numberONe.controller.index.BaseController;
import com.numberONe.entity.StudentFormMap;
import com.numberONe.mapper.StudentMapper;
import com.numberONe.plugin.PageView;
import com.numberONe.util.Common;

@Controller
@RequestMapping("/student/")
public class StudentConntroller extends BaseController {
	@Inject
	private StudentMapper studentMapper;
	
	@RequestMapping("list")
	public String listUI(Model model) throws Exception {
		model.addAttribute("res", findByRes());
		return Common.BACKGROUND_PATH + "/system/student/list";
	}

	@ResponseBody
	@RequestMapping("findByPage")
	public PageView findByPage( String pageNow,
			String pageSize,String column,String sort) throws Exception {
		StudentFormMap studentFormMap = getFormMap(StudentFormMap.class);
		studentFormMap =toFormMap(studentFormMap, pageNow, pageSize, studentFormMap.getStr("orderby"));
		studentFormMap.put("column", column);
		studentFormMap.put("sort", sort);
        pageView.setRecords(studentMapper.findByPage(studentFormMap));
        return pageView;
	}

	@RequestMapping("addUI")
	public String addUI(Model model) throws Exception {
		return Common.BACKGROUND_PATH + "/system/student/add";
	}
	@ResponseBody
	@RequestMapping("addEntity")
	@Transactional(readOnly=false)	//需要事务操作必须加入此注解
	@SystemLog(module="学生管理",methods="学生管理-新增学生")//凡需要处理业务逻辑的.都需要记录操作日志
	public String addEntity() throws Exception {
		StudentFormMap studentFormMap = getFormMap(StudentFormMap.class);
		studentMapper.addEntity(studentFormMap);
		return "success";
	}

	@ResponseBody
	@RequestMapping("deleteEntity")
	@Transactional(readOnly=false)//需要事务操作必须加入此注解
	@SystemLog(module="学生管理",methods="学生管理-删除学生")//凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity() throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			studentMapper.deleteByAttribute("id", id, StudentFormMap.class);
		}
		return "success";
	}
}
