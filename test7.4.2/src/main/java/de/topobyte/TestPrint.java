package de.topobyte;

public class TestPrint
{

	public static void main(String[] args)
	{
		System.out.println("test");
		String foo = System.getProperty("foo");
		System.out.println(String.format("foo='%s'", foo));
	}

}
