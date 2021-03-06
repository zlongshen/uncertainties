
! THE BEER-WARE LICENSE:
! Alberto Ramos wrote this file. As long as you retain this 
! notice you can do whatever you want with this stuff. If we meet some 
! day, and you think this stuff is worth it, you can buy me a beer in 
! return. <alberto.ramos@cern.ch>
!
! $ v1.0 $
!                               

program check

  use uncertainties

  type (ureal) :: x, y, z, w1, w2, w3

  x = (/3.0_DP,0.1_DP/)
  y = (/12.0_DP,0.1_DP/)
  z = (/2.0_DP,0.2_DP/)
  write(*,'(1A)', advance="NO")'x:   '
  call x%write()
  write(*,'(1A)', advance="NO")'y:   '
  call y%write()
  write(*,'(1A)', advance="NO")'z:   '
  call z%write()

  w1 = sin(x+y)
  w2 = (sin(x)*cos(y) + cos(x)*sin(y))
  w1 = w1 - w2
  write(*,'(1A)', advance="NO")'zero: '
  call w1%write()
  
  w2 = exp(x)
  write(*,'(1A)', advance="NO")'exp(x):'
  call w2%write()
  w3 = log(w2) - x
  write(*,'(1A)', advance="NO")'zero: '
  call w3%write()
  
  stop
end program check
