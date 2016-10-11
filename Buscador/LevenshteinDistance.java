//Taken from "http://stackoverflow.com/questions/955110/similarity-string-comparison-in-java"

public class LevenshteinDistance {

	public static int computeEditDistance(String s1, String s2) {
		s1 = s1.toLowerCase();
		s2 = s2.toLowerCase();

		int[] costs = new int[s2.length() + 1];
		for (int i = 0; i <= s1.length(); i++) {
			int lastValue = i;
			for (int j = 0; j <= s2.length(); j++) {
				if (i == 0) {
					costs[j] = j;
				} else {
					if (j > 0) {
						int newValue = costs[j - 1];
						if (s1.charAt(i - 1) != s2.charAt(j - 1)) {
							newValue = Math.min(Math.min(newValue, lastValue),
									costs[j]) + 1;
						}
						costs[j - 1] = lastValue;
						lastValue = newValue;
					}
				}
			}
			if (i > 0) {
				costs[s2.length()] = lastValue;
			}
		}
		return costs[s2.length()];
	}

	public static double getDistance(String s1, String s2) {
		double similarityOfStrings = 0.0;
		int editDistance = 0;
		if (s1.length() < s2.length()) { // s1 should always be bigger
			String swap = s1;
			s1 = s2;
			s2 = swap;
		}
		int bigLen = s1.length();
		editDistance = computeEditDistance(s1, s2);
		if (bigLen == 0) {
			similarityOfStrings = 1.0; /* both strings are zero length */
		} else {
			similarityOfStrings = (bigLen - editDistance) / (double) bigLen;
		}
		/*
		//Prints Distance
		//System.out.println(s1 + "-->" + s2 + ": " +
		  //      editDistance + " (" + similarityOfStrings + ")");
		System.out.println(editDistance + " (" + similarityOfStrings + ")");
		*/
		return similarityOfStrings;
	}

	public static void main(String[] args) {}
}