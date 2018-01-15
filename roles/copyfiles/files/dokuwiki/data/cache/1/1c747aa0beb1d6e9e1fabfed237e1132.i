a:14:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Um im PowerShell eine ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"GUI";}i:2;i:23;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:" zu erstellen ist XAML die beste Möglichkeit. Der XAML Code kann über Visual Studio einfach erstellt werden muss leicht angepasst werden. ";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:166;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:166;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Ein einfaches Beispiel was man problemlos erweitern kann ";}i:2;i:168;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:225;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:225;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:3579:"
#XAML Testing
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @'
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="MainWindow" Height="331.361" Width="275.444">
       <Grid Margin="0,0,2,-4" Background="{DynamicResource {x:Static SystemColors.ControlBrushKey}}" Height="424" VerticalAlignment="Top">      
        
        <Button Name="button" Content="Button" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="75"/>
        <Button Name="Exit" Content="Exit" HorizontalAlignment="Left" Margin="10,35,0,0" VerticalAlignment="Top" Width="75" RenderTransformOrigin="0.795,0.374"/>
        <Button Name="Remote" Content="RemoteCon" HorizontalAlignment="Left" Margin="90,10,0,0" VerticalAlignment="Top" Width="75"/>
        <TextBox Name="CName" HorizontalAlignment="Left" Height="21" Margin="130,81,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="129" IsEnabled="False" />
        <TextBox Name="CName_W" HorizontalAlignment="Left" Height="21" Margin="10,81,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="99" IsEnabled="False"/>
        <TextBox Name="RemoteConT" HorizontalAlignment="Left" Height="23" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="98" Margin="0,271,0,0" IsEnabled="False" /> 
        <TextBox Name="RemoteCon" HorizontalAlignment="Left" Height="23" Margin="119,271,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="146"  />    

    </Grid>
</Window>
'@

#Read XAML
$reader = (New-Object -TypeName System.Xml.XmlNodeReader -ArgumentList $XAML) 
#    $Form = [Windows.Markup.XamlReader]::Load($reader)
try
{
    $Form = [Windows.Markup.XamlReader]::Load($reader)
}
catch
{
    Write-Host -Object 'Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered.'
    exit
}
#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$XAML.SelectNodes('//*[@Name]') | ForEach-Object -Process {
    Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)
}
#===========================================================================
# WMI Query
#===========================================================================
$oWMIOS = Get-WmiObject -Class win32_OperatingSystem
#===========================================================================
# Add events to Form Objects
#===========================================================================
$button.Add_Click({
        $msg = "Ich bin ein Test " + $textBox2.text
        [System.Windows.Forms.MessageBox]::Show($msg,"Titel",0)
})
$Exit.Add_Click({
        $Form.Close()
})
$Remote.Add_Click({
      $pro = Start-Process "$env:windir\system32\mstsc.exe" -ArgumentList "-v $($RemoteCon.text)" -PassThru

})
#===========================================================================
# Info Box
#===========================================================================
$CName.Text = hostname
$CName_W.Text = "Hostname"
$RemoteConT.Text = "Remote Conect"
#===========================================================================
# Shows the form
#===========================================================================
$null = $Form.ShowDialog()


";}i:2;i:3;i:3;s:3591:" powershell>
#XAML Testing
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @'
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="MainWindow" Height="331.361" Width="275.444">
       <Grid Margin="0,0,2,-4" Background="{DynamicResource {x:Static SystemColors.ControlBrushKey}}" Height="424" VerticalAlignment="Top">      
        
        <Button Name="button" Content="Button" HorizontalAlignment="Left" Margin="10,10,0,0" VerticalAlignment="Top" Width="75"/>
        <Button Name="Exit" Content="Exit" HorizontalAlignment="Left" Margin="10,35,0,0" VerticalAlignment="Top" Width="75" RenderTransformOrigin="0.795,0.374"/>
        <Button Name="Remote" Content="RemoteCon" HorizontalAlignment="Left" Margin="90,10,0,0" VerticalAlignment="Top" Width="75"/>
        <TextBox Name="CName" HorizontalAlignment="Left" Height="21" Margin="130,81,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="129" IsEnabled="False" />
        <TextBox Name="CName_W" HorizontalAlignment="Left" Height="21" Margin="10,81,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="99" IsEnabled="False"/>
        <TextBox Name="RemoteConT" HorizontalAlignment="Left" Height="23" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="98" Margin="0,271,0,0" IsEnabled="False" /> 
        <TextBox Name="RemoteCon" HorizontalAlignment="Left" Height="23" Margin="119,271,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="146"  />    

    </Grid>
</Window>
'@

#Read XAML
$reader = (New-Object -TypeName System.Xml.XmlNodeReader -ArgumentList $XAML) 
#    $Form = [Windows.Markup.XamlReader]::Load($reader)
try
{
    $Form = [Windows.Markup.XamlReader]::Load($reader)
}
catch
{
    Write-Host -Object 'Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered.'
    exit
}
#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$XAML.SelectNodes('//*[@Name]') | ForEach-Object -Process {
    Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)
}
#===========================================================================
# WMI Query
#===========================================================================
$oWMIOS = Get-WmiObject -Class win32_OperatingSystem
#===========================================================================
# Add events to Form Objects
#===========================================================================
$button.Add_Click({
        $msg = "Ich bin ein Test " + $textBox2.text
        [System.Windows.Forms.MessageBox]::Show($msg,"Titel",0)
})
$Exit.Add_Click({
        $Form.Close()
})
$Remote.Add_Click({
      $pro = Start-Process "$env:windir\system32\mstsc.exe" -ArgumentList "-v $($RemoteCon.text)" -PassThru

})
#===========================================================================
# Info Box
#===========================================================================
$CName.Text = hostname
$CName_W.Text = "Hostname"
$RemoteConT.Text = "Remote Conect"
#===========================================================================
# Shows the form
#===========================================================================
$null = $Form.ShowDialog()


";}i:2;i:232;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:3830;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3830;}i:13;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3830;}}