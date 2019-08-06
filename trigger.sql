


create trigger LocationInsert
on Production.Location

after insert 
as
 begin
set nocount on;
select  'yeni lokayson bilgisi eklendi';
set nocount off;
end;

select * from Production.Location


insert  into   Production.Location (Name,CostRate,Availability,ModifiedDate)
values ('Esenyurt',0.00,0.00,GETDATE());



create  trigger trg_personel
on Personeller

after insert 
as

raiserror('okan',15,15);


create table Kullanici
(

KullanciID int identity(1,1),
KullanciAd varchar(20),
KullanciMail varchar(20),
)

--silme iþlme

create trigger trg_sil1
on Kullanici

after delete --sildikten sonra 
as 
begin
select deleted.KullaniciAd +deleted.KulllaniciMail   from deleted;
end;



GO

ALTER  trigger [dbo].[trg_sill]
on [dbo].[Kullanici]
after delete
as
begin 
select deleted.KullaniciAd  as [Kullaniciad],deleted.KullaniciMail as Kullanicimail from deleted;
end;


insert into Kullanici (KullaniciAd,KullaniciMail) values ('demo','demo@gmail.com');
insert into Kullanici (KullaniciAd,KullaniciMail) values ('demo1','demo@gmail.com');

select * from  Kullanici


delete from Kullanici where KullaniciID=4

--update

create trigger trgUruntarihduncelle
on Kullanici
after update
as 

begin

update Kullanici set KullaniciAd='DEmo63'  where KullaniciID=(select KullaniciID  from inserted)

end;




update Kullanici    set KullaniciAd='DEmo633'  where KullaniciId=5










