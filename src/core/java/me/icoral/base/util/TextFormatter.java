package me.icoral.base.util;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

public abstract class TextFormatter {

	private final static NumberFormat nfrmb = NumberFormat.getCurrencyInstance(new Locale("zh", "CN"));
	private final static NumberFormat nfusd = NumberFormat.getCurrencyInstance(new Locale("en", "US"));
	private final static NumberFormat nfpercent = NumberFormat.getPercentInstance();

	private final static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private final static SimpleDateFormat datetimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public final static String randomCode = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	public static Date parseDatetime(String source) {
		if (source == null || source.trim().equals("")) {
			return null;
		}
		Date date = null;
		try {
			if (source.length() <= 10) {
				source += " 00:00:00";
			}
			date = datetimeFormat.parse(source);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	public static String formatDatetime(Date source) {
		if (source == null) {
			return "";
		}
		String dateString = datetimeFormat.format(source);
		return dateString;
	}

	public static String formatDate(Date source) {
		if (source == null) {
			return "";
		}
		String dateString = dateFormat.format(source);
		return dateString;
	}

	public static String py(String chinese) {
		if (chinese == null || chinese.equals("")) {
			return "";
		}
		StringBuffer pybf = new StringBuffer();
		char[] arr = chinese.toCharArray();
		HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
		defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
		defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] > 128) {
				try {
					String[] _t = PinyinHelper.toHanyuPinyinStringArray(arr[i], defaultFormat);
					if (_t != null) {
						pybf.append(_t[0].charAt(0));
					}
				} catch (BadHanyuPinyinOutputFormatCombination e) {
					e.printStackTrace();
				}
			} else {
				pybf.append(arr[i]);
			}
		}

		return pybf.toString().replaceAll("\\W", "").trim();
	}

	public static String pinyin(String chinese) {
		if (chinese == null || chinese.equals("")) {
			return "";
		}
		StringBuffer pybf = new StringBuffer();
		char[] arr = chinese.toCharArray();
		HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
		defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
		defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] > 128) {
				try {
					pybf.append(PinyinHelper.toHanyuPinyinStringArray(arr[i], defaultFormat)[0]);
				} catch (BadHanyuPinyinOutputFormatCombination e) {
					e.printStackTrace();
				}
			} else {
				pybf.append(arr[i]);
			}
		}
		return pybf.toString();
	}

	public static String formatCurrency(Double number, String currencyType) {
		if (number == null) {
			return "0";
		}
		String value = "";
		if (currencyType.toUpperCase().equals("RMB")) {
			value = nfrmb.format(number);
		} else if (currencyType.toUpperCase().equals("USD")) {
			value = nfusd.format(number);
		}
		return value;
	}

	public static String formatCurrency(BigDecimal number, String currencyType) {
		if (number == null) {
			return "0";
		}
		String value = "";
		if (currencyType.toUpperCase().equals("RMB")) {
			value = nfrmb.format(number);
		} else if (currencyType.toUpperCase().equals("USD")) {
			value = nfusd.format(number);
		}
		return value;
	}

	public static String formatPercent(Double number) {
		String value = "";
		nfpercent.format(number);
		return value;
	}

	public static Double parseCurrency(String money, String currencyType) throws ParseException {
		Double value = 0D;
		if (currencyType.toUpperCase().equals("RMB")) {
			value = nfrmb.parse(money).doubleValue();
		} else if (currencyType.toUpperCase().equals("USD")) {
			value = nfusd.parse(money).doubleValue();
		}

		return value;
	}

	public static String zeroFill(int num, int len) {
		String format = "%0" + len + "d";
		String value = String.format(format, num);
		return value;
	}

	public static String randomCode(int len) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < len; i++) {
			int idx = random.nextInt(62);
			String strRand = String.valueOf(randomCode.charAt(idx));
			buffer.append(strRand);
		}
		return buffer.toString();
	}

}