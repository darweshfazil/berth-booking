package web;

public class ApproveBerth {
	private String vesselno;
    private String vesselname;
    private String from;
    private String to;
    private String deptdate;
    private String depttime;
    private String arrivdate;
    private String arrivtime;
    private String port;
    private String status;
    private String length;
    private String type;

    public ApproveBerth(String vesselno, String vesselname,String from, String to,
    		String deptdate, String depttime, String arrivdate, String arrivtime, String length, String type,
    		String port, String status) {
        this.vesselno = vesselno;
        this.vesselname = vesselname;
        this.type = type;
        this.length = length;
        this.from = from;
        this.to = to;
        this.deptdate = deptdate;
        this.depttime = depttime;
        this.arrivdate = arrivdate;
        this.arrivtime = arrivtime;
        this.port = port;
        this.status = status;
    }

    public String getVesselNo() {
        return vesselno;
    }

    public void setVesselNo(String vesselno) {
    	this.vesselno = vesselno;
    }
    public String getVesselName() {
        return vesselname;
    }

    public void setVesselName(String vesselname) {
    	this.vesselname = vesselname;
    }
    public String getlength() {
        return length;
    }

    public void setlength(String length) {
    	this.length = length;
    }
    public String gettype() {
        return type;
    }
    public void settype(String type) {
    	this.type = type;
    }
    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
    	this.from = from;
    }
    public String getTo() {
        return to;
    }

    public void setTo(String to) {
    	this.to = to;
    }
    public String getDeptDate() {
        return deptdate;
    }

    public void setDeptDate(String deptdate) {
    	this.deptdate = deptdate;
    }
    public String getDeptTime() {
        return depttime;
    }

    public void setDeptTime(String depttime) {
    	this.depttime = depttime;
    }
    public String getArrivDate() {
        return arrivdate;
    }

    public void setArrivDate(String arrivdate) {
    	this.arrivdate = arrivdate;
    }
    public String getArrivTime() {
        return arrivtime;
    }

    public void setArrivTime(String arrivtime) {
    	this.arrivtime = arrivtime;
    }
    public String getPort() {
        return port;
    }

    public void setPort(String port) {
    	this.port = port;
    }
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
    	this.status = status;
    }
}
