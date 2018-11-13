package com.lzy.test;

import java.io.*;
import java.util.*;




public class test {
    public boolean wordBreak(String s, List<String> wordDict) {
        boolean [] f= new boolean[s.length()+1];
        f[0] = true;

        for (int i=1;i<=s.length();i++)
            for (int j=0;j<i;j++)
            {
                if(f[j]&&wordDict.contains(s.substring(j,i)))
                {
                    f[i] = true;
                }
            }
            return f[s.length()];
    }

    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);

        String a = new String();
        test  t = new test();
        List<Integer> list =  new ArrayList<>();

    }
}
