
program EnKF_Lorenz
  USE modulo_distribucion_normal
  implicit none
  integer,parameter::n=40,m=20,tsim=100,Nen=10,fileidreal=1000
  real,parameter::F=8
  integer::k,i,j,fileid     ! i for states, j for time, k for ensembles
  real::realaux
  integer::intaux
  real,parameter :: dt=0.01
  real,allocatable,dimension(:,:,:):: x
  real*8,allocatable,dimension(:,:)::xreal,Hobs,P,dX
  Character(len=20)::filename

  !===Matriz Initialization===
  allocate(x(n,tsim,Nen))
  allocate(xreal(n,tsim))
  allocate(Hobs(m,n))
  allocate(P(n,n))
  allocate(dX(n,Nen))
  Hobs=0
  !===Random observed states===
  do i=1,m
     CALL RANDOM_NUMBER(realaux)
     intaux=1+FLOOR((n-1)*realaux)
     Hobs(i,intaux)=1
  end do
call r8mat_print(m,n,Hobs,'Observation Matrix')

  !=== Ensemble initialization===
  CALL RANDOM_NUMBER(xreal(:,1))
  do k=1,Nen
     CALL RANDOM_NUMBER(x(:,1,k))
  end do

 



  loop_time:do j=2,tsim
     !=== Real State Simulation===
     CALL Lorenz_96_One_Step(n,dt,xreal(:,j-1),F,xreal(:,j))
     open(fileidreal,file='./Data/Real_AUX_.dat',status='unknown')
     write(fileidreal,*) (xreal(i,j),i=1,n)
     close(fileidreal)      
     loop_Ensemble: do k=1,Nen
        !=== Forecast Step===
        CALL Lorenz_96_One_Step(n,dt,x(:,j-1,k),F,x(:,j,k))
        !===Se escriben archivos de salida simulando un modelo externo===
        fileid=100+k
        CALL str(k,filename)       
        open(fileid,file='./Data/Ensemble_AUX_'//trim(filename)//'.dat',status='unknown')
        write(fileid,*) (x(i,j,k),i=1,n)
        close(fileid)      
     end do loop_Ensemble

     

  end do loop_time

 


  
  
!===Metodo para imprimir matrices en Matbal===

!do k=1,Nen
!    fileid=100+k
!    CALL str(k,filename)
!    open(fileid,file='./Data/Ensemble'//trim(filename)//'.dat',status='unknown')
!        write(fileid,*) ((x(i,j,k),i=1,n),j=1,tsim) !El interno para filas
!    close(fileid)
!end do



end program EnKF_Lorenz

