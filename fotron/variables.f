!gfortran

      program testingVariables
    
        !print*, "Helllo"
        !integer
        integer :: largeval
        !print*, huge(largeval)

        !real
        real :: p, q, res
        p = 2.0
        q = 3.0
        res = p/q
        print*, res
    
      end program testingVariables