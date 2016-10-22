package tools;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * ��װ�˴��ı��ļ��ж���String�ķ���
 * 
 * 
 *
 */
public class MyFileReader {

	public static String readFromFile(String filename) {
		String bigStr = "";
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(new File(filename)));
			String line = "";
			while ((line = br.readLine()) != null) {
				bigStr += line + "\n";
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return bigStr;
	}

}
