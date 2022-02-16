package web;
public class BookBerth {
    private String vesselno;
    private String vesselname;
    private String vesselowner;
    private String ownerphone;
    private String agencyname;
    private String agentname;
    private String agencyemail;
    private String agentphone;
    private String agentcity;
    private String agencypincode;
    private String from;
    private String to;
    private String deptdate;
    private String depttime;
    private String arrivdate;
    private String arrivtime;
    private String length;
    private String type;
    private String port;
    private String status;

    public BookBerth(String vesselno, String vesselname, String vesselowner, String ownerphone, String agencyname, 
    		String agentname, String agencyemail, String agentphone, String agentcity, String agencypincode, 
    		String from, String to, String deptdate, String depttime, String arrivdate, String arrivtime,
    		String length, String type, String port, String status) {
        this.vesselno = vesselno;
        this.vesselname = vesselname;
        this.vesselowner = vesselowner;
        this.ownerphone = ownerphone;
        this.agencyname = agencyname;
        this.agentname = agentname;
        this.agencyemail = agencyemail;
        this.agentphone = agentphone;
        this.agentcity = agentcity;
        this.agencypincode = agencypincode;
        this.from = from;
        this.to = to;
        this.deptdate = deptdate;
        this.depttime = depttime;
        this.arrivdate = arrivdate;
        this.arrivtime = arrivtime;
        this.length = length;
        this.type = type;
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
    public String getVesselOwner() {
        return vesselowner;
    }

    public void setVesselOwner(String vesselowner) {
    	this.vesselowner = vesselowner;
    }
    public String getOwnerPhone() {
        return ownerphone;
    }

    public void setOwnerPhone(String ownerphone) {
    	this.ownerphone = ownerphone;
    }
    public String getAgencyName() {
        return agencyname;
    }

    public void setAgencyName(String agencyname) {
    	this.agencyname = agencyname;
    }
    public String getAgentName() {
        return agentname;
    }

    public void setAgentName(String agentname) {
    	this.agentname = agentname;
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
    public String getAgentCity() {
        return agentcity;
    }

    public void setAgentCity(String agentcity) {
    	this.agentcity = agentcity;
    }
    public String getAgencyPincode() {
        return agencypincode;
    }

    public void setAgencyPincode(String agencypincode) {
    	this.agencypincode = agencypincode;
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
    public String getLength() {
        return length;
    }

    public void setLength(String length) {
    	this.length = length;
    }
    public String getType() {
        return type;
    }

    public void setType(String type) {
    	this.type = type;
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