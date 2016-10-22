package test;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

import engine.ConvertorException;
import engine.JspToJavaConvertor;
import tools.MyFileReader;

/**
 * ������
 * 
 * 
 *
 */
public class Test {

	private final static String INPUTPATH = "jsp/";
	private final static String OUTPUTPATH = "output/";

	public static void main(String[] args) {
		String filename = "index.jsp";
		Test test = new Test();
		test.start(filename);
	}

	private void start(String filename) {
		// ��ȡ�ļ���
		int index = filename.indexOf(".jsp");
		if (index == -1) {
			System.out.println("����jsp�ļ��� ");
			return;
		}
		String fName = filename.substring(0, index);
		/* ��ȡ�ļ� */
		String bigStr = "";
		bigStr = MyFileReader.readFromFile(INPUTPATH + filename);
		/* ת�� */
		JspToJavaConvertor convertor = new JspToJavaConvertor(fName);
		String convertedString = "";
		try {
			convertedString = convertor.convert(bigStr);
		} catch (ConvertorException e1) {
			e1.printStackTrace();
			System.exit(0);
		}
		System.out.print("ת���� \n" + convertedString);
		/* д���ļ� */
		PrintWriter pw = null;
		try {
			pw = new PrintWriter(OUTPUTPATH + fName + ".java");
			pw.write(convertedString);
			pw.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			pw.close();
		}
	}

}
