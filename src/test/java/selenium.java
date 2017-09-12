package com.sampleapp.tests;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
//import org.openqa.selenium.WebDriver;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class selenium {
	
	
	WebDriver driver;
	String appURL = "http://localhost:8080/sampleapp";

	@BeforeClass
	public void testSetUp() {
		System.setProperty("webdriver.gecko.driver","C:/Program Files/Mozilla Firefox/geckodriver.exe");
		driver = new FirefoxDriver();
	}
	
	@Test
	public void calculate() {
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.navigate().to(appURL);
		driver.findElement(By.id("input1")).sendKeys("10");
		driver.findElement(By.id("input2")).sendKeys("20");
		driver.findElement(By.id("add")).click();
		WebElement result = driver.findElement(By.id("result"));
		System.out.println(" The Result is " + result.getAttribute("value"));
	}
	
	@AfterClass
	public void tearDown() {
		driver.quit();
	}
	
}