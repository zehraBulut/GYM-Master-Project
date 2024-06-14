public class GM39GetAccountsFromPTSResponse {

	public String Name;
	public String AccountNumber;
	
	public static List<GM39GetAccountsFromPTSResponse> parse(String json) {
		return (List<GM39GetAccountsFromPTSResponse>) System.JSON.deserialize(json, List<GM39GetAccountsFromPTSResponse>.class);
	}
}