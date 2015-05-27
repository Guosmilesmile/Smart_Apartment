package com.test.daoImpl;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.test.dao.MessageDao;

public class MessageDaoImplTest {
	private MessageDao messageDao =null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		ApplicationContext applicationContext = new FileSystemXmlApplicationContext("/src/applicationContext.xml");
		messageDao = (MessageDao) applicationContext.getBean("messageDao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		System.out.println(messageDao.getMessages());
	}

}
