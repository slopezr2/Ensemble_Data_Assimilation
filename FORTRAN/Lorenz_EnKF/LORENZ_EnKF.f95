
program EnKF_Lorenz

  implicit none
  integer,parameter::n=40,tsim=100,Nen=10
  real,parameter::F=8
  integer::k,i,j,fileid
  real,parameter :: dt=0.01
  real,allocatable,dimension(:,:,:):: x
  Character(len=20)::filename

  allocate(x(n,tsim,Nen))

  do i=1,Nen
  CALL RANDOM_NUMBER(x(:,1,i))

  end do




  loop_time:do k=2,tsim

    loop_Ensemble: do i=1,Nen

        CALL Lorenz_96_One_Step(n,dt,x(:,k-1,i),F,x(:,k,i))

    end do loop_Ensemble

  end do loop_time


!===Metodo para imprimir matrices en Matbal===

do k=1,Nen
    fileid=100+k
    CALL str(k,filename)
    open(fileid,file='./Data/Ensemble'//trim(filename)//'.dat',status='unknown')
    do j=1,tsim !El for para columnas
        write(fileid,*) (x(i,j,k),i=1,n) !El interno para filas
    end do
    close(fileid)
end do



end program EnKF_Lorenz

