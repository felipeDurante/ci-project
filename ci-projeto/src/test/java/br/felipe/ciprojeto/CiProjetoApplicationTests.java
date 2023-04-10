package br.felipe.ciprojeto;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CiProjetoApplicationTests {

	@Test
	void contextLoads() {
		assertEquals(4,4);  
		System.out.println("é isso parca");
	}

}
