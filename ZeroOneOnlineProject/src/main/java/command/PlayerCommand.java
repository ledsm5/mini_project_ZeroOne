package command;



import org.springframework.web.multipart.MultipartFile;

public class PlayerCommand {
	String plerNum;
	String plerName;
	String plerLeague;
	String plerTeam;
	String plerAge;
	String plerFoot;
	String plerRate;
	String plerPrice;
	
	String plerDetail;
	String plerAbility;
	String plerPosition;
	String plerSalary;
	String plerHeight;
	String plerIndiSkill;
	String plerSession;
	MultipartFile [] plerImage;
	String fileDel; //임시삭제하기위해 
	
	
	
	public String getFileDel() {
		return fileDel;
	}
	public void setFileDel(String fileDel) {
		this.fileDel = fileDel;
	}
	
	public String getPlerSession() {
		return plerSession;
	}
	public void setPlerSession(String plerSession) {
		this.plerSession = plerSession;
	}
	public String getPlerIndiSkill() {
		return plerIndiSkill;
	}
	public void setPlerIndiSkill(String plerIndiSkill) {
		this.plerIndiSkill = plerIndiSkill;
	}
	public String getPlerHeight() {
		return plerHeight;
	}
	public void setPlerHeight(String plerHeight) {
		this.plerHeight = plerHeight;
	}
	public String getPlerNum() {
		return plerNum;
	}
	public void setPlerNum(String plerNum) {
		this.plerNum = plerNum;
	}
	public String getPlerName() {
		return plerName;
	}
	public void setPlerName(String plerName) {
		this.plerName = plerName;
	}
	public String getPlerTeam() {
		return plerTeam;
	}
	public void setPlerTeam(String plerTeam) {
		this.plerTeam = plerTeam;
	}
	public String getPlerAge() {
		return plerAge;
	}
	public void setPlerAge(String plerAge) {
		this.plerAge = plerAge;
	}
	public String getPlerFoot() {
		return plerFoot;
	}
	public void setPlerFoot(String plerFoot) {
		this.plerFoot = plerFoot;
	}
	public String getPlerRate() {
		return plerRate;
	}
	public void setPlerRate(String plerRate) {
		this.plerRate = plerRate;
	}
	
	
	public String getPlerPrice() {
		return plerPrice;
	}
	public void setPlerPrice(String plerPrice) {
		this.plerPrice = plerPrice;
	}
	public String getPlerDetail() {
		return plerDetail;
	}
	public void setPlerDetail(String plerDetail) {
		this.plerDetail = plerDetail;
	}
	public MultipartFile[] getPlerImage() {
		return plerImage;
	}
	public void setPlerImage(MultipartFile[] plerImage) {
		this.plerImage = plerImage;
	}
	public String getPlerLeague() {
		return plerLeague;
	}
	public void setPlerLeague(String plerLeague) {
		this.plerLeague = plerLeague;
	}
	public String getPlerAbility() {
		return plerAbility;
	}
	public void setPlerAbility(String plerAbility) {
		this.plerAbility = plerAbility;
	}
	public String getPlerPosition() {
		return plerPosition;
	}
	public void setPlerPosition(String plerPosition) {
		this.plerPosition = plerPosition;
	}
	public String getPlerSalary() {
		return plerSalary;
	}
	public void setPlerSalary(String plerSalary) {
		this.plerSalary = plerSalary;
	}


}
