package NBADAO;

public class nbaSalaryBean {
	private int NO;
	private String NAME;
	private String POS;
	private String TEAM;
	private String SEASON;
	private int SALARY;
	public nbaSalaryBean(int nO2, String nAME2, String pOS2, String tEAM2, String sEASON2, int sALARY2) {
		this.NO = nO2;
		this.NAME = nAME2;
		this.POS = pOS2;
		this.SALARY = sALARY2;
		this.TEAM = tEAM2;
		this.SEASON = sEASON2;
	}
	@Override
	public String toString() {
		return "nbaSalaryBean [NO=" + NO + ", NAME=" + NAME + ", POS=" + POS + ", TEAM=" + TEAM + ", SEASON=" + SEASON
				+ ", SALARY=" + SALARY + "]";
	}

	public nbaSalaryBean() {

	}

	public int getNO() {
		return NO;
	}

	public void setNO(int nO) {
		NO = nO;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getPOS() {
		return POS;
	}

	public void setPOS(String pOS) {
		POS = pOS;
	}

	public String getTEAM() {
		return TEAM;
	}

	public void setTEAM(String tEAM) {
		TEAM = tEAM;
	}

	public String getSEASON() {
		return SEASON;
	}

	public void setSEASON(String sEASON) {
		SEASON = sEASON;
	}

	public int getSALARY() {
		return SALARY;
	}

	public void setSALARY(int sALARY) {
		SALARY = sALARY;
	}

}
