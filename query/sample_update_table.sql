select * from vrdr;
update vrdr
	set nvr = "CER" where vr = "04";

insert into vrdr (vr,nvr,nn_vr,ln_vr,gvr,gvr2) 
values("99","SILVA PLAN","SP Proba","Silva Plan",0,39);

select count(*) from vrdr;

delete from vrdr where nvr = "SILVA PLA";

DISPLAY PROCEDURES;