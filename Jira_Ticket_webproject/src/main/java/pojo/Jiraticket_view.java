package pojo;

public class Jiraticket_view {

	int id;
	String Assigneename;
	String Reportername;
	String problem;
	String notify;
	String Status;
	
	public Jiraticket_view(int id, String assigneename, String reportername, String problem, String notify,
			String status) {
		super();
		this.id = id;
		Assigneename = assigneename;
		Reportername = reportername;
		this.problem = problem;
		this.notify = notify;
		Status = status;
	}

	public Jiraticket_view() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAssigneename() {
		return Assigneename;
	}

	public void setAssigneename(String assigneename) {
		Assigneename = assigneename;
	}

	public String getReportername() {
		return Reportername;
	}

	public void setReportername(String reportername) {
		Reportername = reportername;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getNotify() {
		return notify;
	}

	public void setNotify(String notify) {
		this.notify = notify;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}
	
	
	
}
