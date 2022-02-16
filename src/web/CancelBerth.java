package web;
public class CancelBerth {
    private String vesselno;
    private String vesselname;
    private String agencyemail;
    private String agentphone;
    private String from;
    private String to;
    private String deptdate;
    private String depttime;
    private String arrivdate;
    private String arrivtime;
    private String port;
    private String ownerphone;
    private String status;

    public CancelBerth(String vesselno, String vesselname, String ownerphone, String agencyemail, String agentphone, 
    		String from, String to, String deptdate, String depttime, String arrivdate, String arrivtime,
    		String port, String status) {
        this.vesselno = vesselno;
        this.vesselname = vesselname;
        this.ownerphone = ownerphone;
        this.agencyemail = agencyemail;
        this.agentphone = agentphone;
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
    public String getOwnerPhone() {
        return ownerphone;
    }

    public void setOwnerPhone(String ownerphone) {
    	this.ownerphone = ownerphone;
    }
    public String getAgencyEmail() {
        return agencyemail;
    }
    public void setAgencyEmail(String agencyemail) {
    	this.agencyemail = agencyemail;
    }
    public String getAgentPhone() {
        return agentphone;
    }

    public void setAgentPhone(String agentphone) {
    	this.agentphone = agentphone;
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