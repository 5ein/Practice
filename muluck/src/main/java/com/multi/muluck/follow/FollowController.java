package com.multi.muluck.follow;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("follow")
public class FollowController {
				
	@Autowired 
	FollowDAO dao;

	@RequestMapping("insert")
	public void insert(FollowVO bag) {
		System.out.println(bag);
		dao.insert(bag);
	}
	
	@RequestMapping("delete")
	public void delete(String id) {
		System.out.println(id);
		dao.delete(id);
	}
	
	@RequestMapping("update")
	public void update(FollowVO bag) {
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		System.out.println(id);
		FollowVO vo = dao.one(id); //vo받아서 vo에 넣어둠.
		//views까지 전달할 데이터를 model객체를 이용해서 속성으로 지정해주세요.
		model.addAttribute("vo", vo); //속성으로 지정
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<FollowVO> list = dao.list(); 
		model.addAttribute("list", list);
	}
	
}

