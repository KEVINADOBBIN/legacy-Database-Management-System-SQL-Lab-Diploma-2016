Imports System
Imports System.IO
Imports System.Threading

Module Program

    Sub Main()
        Dim ch As Integer
        Do
            Console.Clear()
            Console.WriteLine("===== VB.NET LAB PROGRAMS (13) =====")
            Console.WriteLine("1. Calculator")
            Console.WriteLine("2. Alarm Clock")
            Console.WriteLine("3. Student Marks & Division")
            Console.WriteLine("4. MDI Text Editor (Console Simulated)")
            Console.WriteLine("5. Encrypt / Decrypt String")
            Console.WriteLine("6. Vending Machine")
            Console.WriteLine("7. Login Validation")
            Console.WriteLine("8. Employee Salary")
            Console.WriteLine("9. Image Loader (Path Check)")
            Console.WriteLine("10. RGB Text Color")
            Console.WriteLine("11. Font & Color Dialog (Simulated)")
            Console.WriteLine("12. Mirror Image (Logic Only)")
            Console.WriteLine("13. File Handling (Random File)")
            Console.WriteLine("0. Exit")
            Console.Write("Enter choice: ")
            Integer.TryParse(Console.ReadLine(), ch)

            Select Case ch
                Case 1 : Calculator()
                Case 2 : AlarmClock()
                Case 3 : StudentMarks()
                Case 4 : TextEditor()
                Case 5 : EncryptDecrypt()
                Case 6 : VendingMachine()
                Case 7 : LoginValidation()
                Case 8 : EmployeeSalary()
                Case 9 : ImageLoader()
                Case 10 : RGBColor()
                Case 11 : FontColor()
                Case 12 : MirrorImage()
                Case 13 : FileHandling()
                Case 0 : Exit Do
                Case Else
                    Console.WriteLine("Invalid choice")
                    Pause()
            End Select
        Loop
    End Sub

    '1 CALCULATOR
    Sub Calculator()
        Console.Clear()
        Console.Write("Enter A: ")
        Dim a = Double.Parse(Console.ReadLine())
        Console.Write("Enter B: ")
        Dim b = Double.Parse(Console.ReadLine())
        Console.Write("Operator (+ - * /): ")
        Dim op = Console.ReadLine()
        Dim r As Double
        Select Case op
            Case "+" : r = a + b
            Case "-" : r = a - b
            Case "*" : r = a * b
            Case "/" : r = If(b <> 0, a / b, 0)
            Case Else
                Console.WriteLine("Invalid")
                Pause() : Exit Sub
        End Select
        Console.WriteLine("Result = " & r)
        Pause()
    End Sub

    '2 ALARM CLOCK
    Sub AlarmClock()
        Console.Clear()
        Console.Write("Enter alarm time (HH:mm:ss): ")
        Dim at = Console.ReadLine()
        While True
            If DateTime.Now.ToString("HH:mm:ss") = at Then
                Console.WriteLine("ALARM RINGING")
                Exit While
            End If
            Thread.Sleep(1000)
        End While
        Pause()
    End Sub

    '3 STUDENT MARKS
    Sub StudentMarks()
        Console.Clear()
        Console.Write("Name: ")
        Dim n = Console.ReadLine()
        Console.Write("M1: ")
        Dim m1 = Integer.Parse(Console.ReadLine())
        Console.Write("M2: ")
        Dim m2 = Integer.Parse(Console.ReadLine())
        Console.Write("M3: ")
        Dim m3 = Integer.Parse(Console.ReadLine())
        Dim tot = m1 + m2 + m3
        Dim per = tot / 3.0
        Dim divi As String
        If per < 40 Then divi = "FAIL" ElseIf per < 50 Then divi = "THIRD" ElseIf per < 60 Then divi = "SECOND" ElseIf per < 75 Then divi = "FIRST" Else divi = "DISTINCTION"
        Console.WriteLine($"Total:{tot} Percent:{per} Division:{divi}")
        Pause()
    End Sub

    '4 TEXT EDITOR (SIMULATED)
    Sub TextEditor()
        Console.Clear()
        Console.WriteLine("Simple Text Editor")
        Console.Write("Enter text: ")
        Dim t = Console.ReadLine()
        File.WriteAllText("editor.txt", t)
        Console.WriteLine("Saved to editor.txt")
        Pause()
    End Sub

    '5 ENCRYPT / DECRYPT
    Sub EncryptDecrypt()
        Console.Clear()
        Console.Write("Enter string: ")
        Dim s = Console.ReadLine()
        Dim key = New Random().Next(1, 9)
        Dim enc = ""
        For Each c In s
            enc &= Chr(Asc(c) + key)
        Next
        Console.WriteLine("Encrypted: " & enc)
        Dim dec = ""
        For Each c In enc
            dec &= Chr(Asc(c) - key)
        Next
        Console.WriteLine("Decrypted: " & dec)
        Pause()
    End Sub

    '6 VENDING MACHINE
    Sub VendingMachine()
        Console.Clear()
        Console.WriteLine("1.IceCream(20) 2.Cake(10) 3.Coke(35)")
        Console.Write("Choice: ")
        Dim c = Integer.Parse(Console.ReadLine())
        Console.Write("Qty: ")
        Dim q = Integer.Parse(Console.ReadLine())
        Dim price As Integer
        Select Case c
            Case 1 : price = 20
            Case 2 : price = 10
            Case 3 : price = 35
            Case Else : Console.WriteLine("Invalid") : Pause() : Exit Sub
        End Select
        Console.WriteLine("Bill = " & price * q)
        Pause()
    End Sub

    '7 LOGIN VALIDATION
    Sub LoginValidation()
        Console.Clear()
        Dim u = "admin"
        Dim p = "123"
        Console.Write("Username: ")
        Dim un = Console.ReadLine()
        Console.Write("Password: ")
        Dim pw = Console.ReadLine()
        If un = u And pw = p Then Console.WriteLine("Login Success") Else Console.WriteLine("Login Failed")
        Pause()
    End Sub

    '8 EMPLOYEE SALARY
    Sub EmployeeSalary()
        Console.Clear()
        Console.Write("Basic Pay: ")
        Dim bp = Integer.Parse(Console.ReadLine())
        Dim da, hra, ded As Double
        Select Case bp
            Case <= 2000 : da = 0.02 * bp : hra = 0.03 * bp : ded = 50
            Case <= 5000 : da = 0.04 * bp : hra = 0.05 * bp : ded = 100
            Case <= 10000 : da = 0.06 * bp : hra = 0.07 * bp : ded = 500
            Case Else : da = 0.08 * bp : hra = 0.09 * bp : ded = 1000
        End Select
        Dim net = bp + da + hra - ded
        Console.WriteLine("Net Salary = " & net)
        Pause()
    End Sub

    '9 IMAGE LOADER
    Sub ImageLoader()
        Console.Clear()
        Console.Write("Enter image path: ")
        Dim p = Console.ReadLine()
        Console.WriteLine(If(File.Exists(p), "Image Loaded", "File Not Found"))
        Pause()
    End Sub

    '10 RGB COLOR
    Sub RGBColor()
        Console.Clear()
        Console.Write("R: ")
        Dim r = Integer.Parse(Console.ReadLine())
        Console.Write("G: ")
        Dim g = Integer.Parse(Console.ReadLine())
        Console.Write("B: ")
        Dim b = Integer.Parse(Console.ReadLine())
        Console.WriteLine($"RGB({r},{g},{b}) Selected")
        Pause()
    End Sub

    '11 FONT & COLOR
    Sub FontColor()
        Console.Clear()
        Console.WriteLine("Font & Color Changed (Simulated)")
        Pause()
    End Sub

    '12 MIRROR IMAGE
    Sub MirrorImage()
        Console.Clear()
        Console.WriteLine("Mirror Image Logic Applied")
        Pause()
    End Sub

    '13 FILE HANDLING
    Sub FileHandling()
        Console.Clear()
        Dim path = "data.txt"
        Console.Write("Enter Name: ")
        Dim n = Console.ReadLine()
        Console.Write("Enter Marks: ")
        Dim m = Console.ReadLine()
        File.AppendAllText(path, n & "," & m & Environment.NewLine)
        Console.WriteLine("Record Saved")
        Pause()
    End Sub

    Sub Pause()
        Console.WriteLine("Press Enter...")
        Console.ReadLine()
    End Sub

End Module
