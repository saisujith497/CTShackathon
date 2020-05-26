import java.util.*;
import java.io.*;
import java.io.FileNotFoundException;

public class Main{

	public static void main(String[] args) throws IOException 
	{
		double[] a = new double[10000];
		File fileIn1 = new File("C:\\Users\\hi\\Downloads\\memory.txt");
		try (BufferedReader bf = new BufferedReader(new FileReader(fileIn1))) 
        {
            String readLine;
            double temp;
            //String str=readLine;
            int line = 0;
            int i=0;
            double sum=0.0;
            double max = 0.0;
            while ((readLine = bf.readLine()) != null) 
            {
                if (line % 2 != 0) {
                	//System.out.println(readLine);
                	String str=readLine;
                	str=str.replaceAll("[^0-9]","");
                    str=str.trim();
                    //str=str.replaceAll("+", "");
                    //System.out.println(str);
                    temp=Integer.parseInt(str);
                    System.out.println(temp/10000);
                    a[i++]=temp/10000;
                    //sum=sum+temp;
                }
                line++;
            }
            for(int j=0;j<938;j++)
            {
            	if(max<a[j])
            		max=a[j];
            	sum=sum+a[j];
            }
            double average=sum/938;
            System.out.println("Average: " + average);
            System.out.println("Maximum: " + max);
         }
 }
}
