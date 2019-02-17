package com.fit2cloud.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * 模板测试.
 * @author Administrator
 *
 */
@Controller
public class TemplateController {
	/**
	 * 返回html模板.
	 */
	@RequestMapping("/")
	public String helloHtml(Map<String,Object> map){
		return "index";
	}
}
