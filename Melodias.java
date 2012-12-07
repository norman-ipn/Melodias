import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.File;
import java.io.PrintWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.awt.event.ActionListener;
public class Melodias implements ActionListener{
	static JButton completa=new JButton();
	static JButton a[]=new JButton[7];
	static JPanel teclado=new JPanel();
	static JPanel principal=new JPanel();
	static JLabel label1=new JLabel();
	static String notas[]={"Do","Re","Mi","Fa","Sol","La","Si"};
	static TextField notastexto=new TextField("Introduce Aqui tus Notas");
	static JButton borrar=new JButton("Borrar");  //Boton que se usara para borrar el arcivo notas.txt
	public Melodias(){
		JFrame melodia = new JFrame("Compilador de Melodias" );
	        melodia.setVisible(true);
        	melodia.setSize(600,400);
        	melodia.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        	JOptionPane bienvenida = new JOptionPane();
		bienvenida.showMessageDialog(melodia,"Hola, esta aplicacion te permitira crear melodias haciendo\nuso de nuestro compilador, de 		una manera facil e intuitiva","Compilador de melodias", JOptionPane.INFORMATION_MESSAGE);
		teclado.setLayout(new FlowLayout());
		for(int i=0;i<7;i++){
			teclado.add(a[i]=new JButton(notas[i]));
			a[i].addActionListener(this);
		}
		completa.setText("Reproducir Completa");
		completa.addActionListener(this);
		notastexto.addActionListener(this);
		borrar.addActionListener(this);
		label1.setText("Para producir una nota, tan solo presiona sobre ella");
		principal.setLayout(new BorderLayout());
		principal.add(notastexto,BorderLayout.EAST);
		principal.add(label1,BorderLayout.NORTH);
		principal.add(teclado,BorderLayout.SOUTH);
		principal.add(completa,BorderLayout.WEST);
		melodia.add(borrar,BorderLayout.EAST);
		melodia.getContentPane().add(principal);
		melodia.setResizable(false);
		melodia.pack();
	}
	public void actionPerformed(ActionEvent a){
		if(a.getSource()==notastexto){ //Si reconoce que se presiono Enter en el TextField entra al if y reproduce las notas
			try{
     				File TextFile = new File("notasaux.txt");
				FileWriter TextOut = new FileWriter(TextFile, false);
				TextOut.write(notastexto.getText()+" ");
				TextOut.close();
				Runtime.getRuntime().exec("./melody notasaux.txt");
				Runtime.getRuntime().exec("csound out.csd");
			} catch(Exception e){}
			try{
				File TextFile = new File("notas.txt"); //Adicionalmente lo seguimos guardando en notas.txt
		       	        FileWriter TextOut = new FileWriter(TextFile, true);
			        TextOut.write(notastexto.getText()+" ");
				TextOut.close();
			} catch(Exception e){}
		return;
		}
     		JButton boton=new JButton();
	        boton=(JButton)a.getSource();
	        String notaaux=new String();
	        if(boton.getText()=="Reproducir Completa"){
	        	try{
	 		        Runtime.getRuntime().exec("./melody notas.txt");
				Runtime.getRuntime().exec("csound out.csd");
			}
			catch(Exception b){}
			return;
     		}
    		if(boton.getText()=="Borrar"){
     			try{
	     			File TextFile = new File("notas.txt");
	     			FileWriter TextOut = new FileWriter(TextFile, false);
	     			TextOut.write("");
	     			TextOut.close();
			} catch(Exception e){}
			return;
     		}
	     if(boton.getText()=="Do")
     			notaaux="C";
	     if(boton.getText()=="Re")
     			notaaux="D";
	     if(boton.getText()=="Mi")
     			notaaux="E";
	     if(boton.getText()=="Fa")
     			notaaux="F";
	     if(boton.getText()=="Sol")
     			notaaux="G";
	     if(boton.getText()=="La")
     			notaaux="A";
	     if(boton.getText()=="Si")
     			notaaux="B";
     	     try{
     			File TextFile = new File("notasaux.txt");
			FileWriter TextOut = new FileWriter(TextFile, false);
			TextOut.write(notaaux+" ");
			TextOut.close();
			Runtime.getRuntime().exec("./melody notasaux.txt");
			Runtime.getRuntime().exec("csound out.csd");
		} catch(Exception e){}
	     try{
	     		File TextFile = new File("notas.txt");
			FileWriter TextOut = new FileWriter(TextFile, true);
			TextOut.write(notaaux+" ");
			TextOut.close();
		} catch(Exception e){}
	}
    public static void main(String[] args) {
     new Melodias();
    }
}
