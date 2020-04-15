package test.entry;

public class Account {
    private String accountid;

    private String postcard;

    private String realname;

    private String idnumber;

    private Integer roleid;

    public String getaccountid() {
        return accountid;
    }

    public void setaccountid(String accountid) {
        this.accountid = accountid == null ? null : accountid.trim();
    }

    public String getPostcard() {
        return postcard;
    }

    public void setPostcard(String postcard) {
        this.postcard = postcard == null ? null : postcard.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

	@Override
	public String toString() {
		return "Account [accountid=" + accountid + ", postcard=" + postcard + ", realname=" + realname + ", idnumber="
				+ idnumber + ", roleid=" + roleid + "]";
	}
    
}