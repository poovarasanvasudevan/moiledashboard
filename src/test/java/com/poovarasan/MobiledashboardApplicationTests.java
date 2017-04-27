package com.poovarasan;

import io.github.swagger2markup.Swagger2MarkupConverter;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Paths;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MobiledashboardApplicationTests {


	@Test
	public void contextLoads() throws MalformedURLException {
		Swagger2MarkupConverter.from("./swagger.json").build()
				.toFolder(Paths.get("src/main/resources/static/docs"));
	}
}
