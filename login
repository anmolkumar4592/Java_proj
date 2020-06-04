/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student_database_javaproj;




import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class Login extends JFrame implements ActionListener {
   JPanel panel;
   JLabel user_label, password_label, message;
   JTextField userName_text;
   JPasswordField password_text;
   JButton submit, cancel;
   Login() {
      // Username Label
      user_label = new JLabel();
      user_label.setText("User Name :");
      userName_text = new JTextField();
      // Password Label
      password_label = new JLabel();
      password_label.setText("Password :");
      password_text = new JPasswordField();
      // Submit
      submit = new JButton("SUBMIT");
      cancel = new JButton("CANCEL");
      panel = new JPanel(new GridLayout(4,1,30,50));
      panel.add(user_label);
      panel.add(userName_text);
      panel.add(password_label);
      panel.add(password_text);
      message = new JLabel();
      panel.add(cancel);
      panel.add(submit);
      panel.add(message);
     
      setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      // Adding the listeners to components..
      submit.addActionListener(this);
      cancel.addActionListener(this);
      add(panel, BorderLayout.CENTER);
      setTitle("Please Login Here !");
      setSize(500,500);
      setVisible(true);
   }
   public static void main(String[] args) {
      new Login();
   }
   @Override
   public void actionPerformed(ActionEvent ae) {
      if(ae.getSource()==submit){
      String userName = userName_text.getText();
      String password = password_text.getText();
      if (userName.trim().equals("admin") && password.trim().equals("admin")) {
         message.setText(" Hello " + userName + "");
         
         Attendance_Parameters ap = new Attendance_Parameters();
      this.dispose();
      }
      else if(userName.trim().equals("student") && password.trim().equals("student")){
          message.setText("Hello Student :" + userName + "");
          
          Student_view sv =  new Student_view();
          this.dispose();
      }
      
      else {
         message.setText(" Invalid user.. ");
      }
      
   }
      else{
          System.exit(0);
      }
   }
}
