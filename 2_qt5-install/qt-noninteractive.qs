function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton, 3000);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText("/qt");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    //widget.selectAll();
    //widget.deselectComponent('qt.5123.src');

    widget.deselectAll();
    widget.selectComponent("qt.5123.gcc_64")
    widget.selectComponent("qt.5123.doc")
    widget.selectComponent("qt.5123.examples")
    widget.selectComponent("qt.5123.qtcharts")
    widget.selectComponent("qt.5123.qtcharts.gcc_64")
    widget.selectComponent("qt.5123.qtdatavis3d")
    widget.selectComponent("qt.5123.qtdatavis3d.gcc_64")
    widget.selectComponent("qt.5123.qtnetworkauth")
    widget.selectComponent("qt.5123.qtnetworkauth.gcc_64")
    widget.selectComponent("qt.5123.qtpurchasing")
    widget.selectComponent("qt.5123.qtpurchasing.gcc_64")
    widget.selectComponent("qt.5123.qtremoteobjects")
    widget.selectComponent("qt.5123.qtremoteobjects.gcc_64")
    widget.selectComponent("qt.5123.qtscript")
    widget.selectComponent("qt.5123.qtspeech")
    widget.selectComponent("qt.5123.qtspeech.gcc_64")
    widget.selectComponent("qt.5123.qtvirtualkeyboard")
    widget.selectComponent("qt.5123.qtvirtualkeyboard.gcc_64")
    widget.selectComponent("qt.5123.qtwebengine")
    widget.selectComponent("qt.5123.qtwebengine.gcc_64")
    // widget.selectComponent("qt.5123.src")
    widget.selectComponent("qt.tools.qtcreator")

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}
