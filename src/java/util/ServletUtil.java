/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author Hugo
 */
public class ServletUtil {

    public static String filter(String imputText) {
        if (imputText == null) {
            return "";
        }
        StringBuilder text = new StringBuilder(imputText.length());
        for (char c : imputText.toCharArray()) {
            switch (c) {
                case '<':
                    text.append("&lt;");
                    break;
                case '>':
                    text.append("&gt;");
                    break;
                case '&':
                    text.append("&amp;");
                    break;
                case '\"':
                    text.append("&quot;");
                    break;
                case '\'':
                    text.append("&apos;");
                    break;
                default:
                    text.append(c);
                    break;
            }
        }
        return text.toString();
    }
}
