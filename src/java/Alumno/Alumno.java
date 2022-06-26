package beans;

public class Alumno 
{
    private String matricula;
    private String nombre;
    private String apellido; 
    private int CVJ;
    private int DWI;
    private int ECDB;
    private double Prom;
    
    public Alumno()
    {
        matricula =" ";
           nombre =" ";
         apellido =" ";
              CVJ = 0;
              DWI = 0;
             ECDB = 0;
            Prom= 0.0;
    }
    public Alumno(String matricula, String nombre, String apellido, int CVJ, int DWI, int Ecdb)
    {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.CVJ  =  CVJ;
        this.DWI  =  DWI;
        this.ECDB =  Ecdb;
    }
    
    
                public String getMatricula()
                {
                    return matricula;
                }
                public String getNombre()
                {
                    return nombre;
                }
                 public String getApellido()
                {
                    return apellido;
                }
                public int getCVJ()
                {
                    return CVJ;
                }
                public int getDWI()
                {
                    return DWI;
                }
                public int getEcdb()
                {
                    return ECDB;
                }

    
    
    public void setMatricula(String matricula)
    {
        this.matricula = matricula;
    }
       
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }
   
    public void setApellido(String apellido)
    {
        this.apellido = apellido;
    }
    
    public void setCVJ(int CVJ)
    {
        this.CVJ = CVJ;
    }
    
    public void setDWI(int DWI)
    {
        this.DWI = DWI;
    }
     
    public void setEcdb(int Ecdb)
    {
        this.ECDB = Ecdb;
    }
    
    
    
    public double Prom()
    {
        return (CVJ+DWI+ECDB)/3.0;
    }
}
