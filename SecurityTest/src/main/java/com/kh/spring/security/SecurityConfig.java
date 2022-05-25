package com.kh.spring.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

//스프링 시큐리티의 설정을 위해
//WebSecurityConfigurerAdapter을 상속받아서
//해당 클래스에 있는 설정 관련 메소드를 오버라이딩한다.

@Configuration //객체 생성 어노테이션. 객체명 : securityConfig
@EnableWebSecurity //스프링 시큐리티 기능 활성화
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
	
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
	}

	@Override
	//인증과 관련된 설정
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()//요청에 대한 인증 설정 시작
			.antMatchers("/"
						, "WEB-INF/views/index.jsp"
						, "/member/main"
						, "/member/joinForm"
						, "member/join").permitAll()// "/" 요청은 인증 받지 않아도 접근 가능
			.antMatchers("/member/board").hasRole("USER")// "/member/board" 요청은 사용자 권한이 있어야 한다.
			.anyRequest().authenticated(); //나머지 요청에 대해서는 인증을 받아야지 사용가능
			// authenticate : 인증 - 신원확인
			// authorise : 인가 - 권한보유여부확인
		
		//로그인 관련 설정
		http.formLogin()
			.loginPage("/member/loginForm")
			.loginProcessingUrl("/member/login") //실제로그인 메소드
			.failureForwardUrl("/member/loginError") //로그인실패 시 경로
			.defaultSuccessUrl("/member/main").permitAll(); //로그인성공 시 경로
	}

	
}