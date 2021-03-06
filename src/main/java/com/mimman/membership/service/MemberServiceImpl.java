package com.mimman.membership.service;

import com.mimman.exception.IdPasswordNotMachingException;
import com.mimman.membership.repository.Login;
import com.mimman.membership.repository.Member;
import com.mimman.membership.repository.Search;
import com.mimman.membership.repository.pwSearch;
import com.mimman.membership.repository.Update;
import com.mimman.mybatis.memberManager;

public class MemberServiceImpl implements MemberService {

	public void getList(Member dto) {
		System.out.println("getList ����");
		memberManager.addUser(dto);
		System.out.println("getList ��");
	}
	
	public Member authenticate(Login login){
		
		Member dto = memberManager.selectByEmail(login);
		
		if(dto == null){
			throw new IdPasswordNotMachingException();
		}
		
		if(!dto.matchPassword(login.getLog_password())){
			throw new IdPasswordNotMachingException();
		}

		return dto;
	
	}
	
	public Member updateUser(String id){
		
		Member dto = memberManager.updateUser(id);
		
		return dto;
	}
	
	public void update(Update update){
		memberManager.update(update);
	}

	public void withdraw(String id) {
		
		memberManager.drop(id);
		
	}

	public String idSearch(Search search) {
		System.out.println(search.getUser_nm()+search.getEmail1());
		
		String dto=memberManager.idSearch(search);
		
		return dto;
	}

	public String pwSearch(pwSearch search) {
		String dto=memberManager.pwSearch(search);
		return dto;
	}
}
