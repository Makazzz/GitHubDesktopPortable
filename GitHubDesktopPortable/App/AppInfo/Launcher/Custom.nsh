${SegmentFile}

${SegmentPre}
	${If} ${FileExists} "$SMPROGRAMS\GitHub, Inc\GitHub Desktop.lnk"
		Rename "$SMPROGRAMS\GitHub, Inc\GitHub Desktop.lnk" "$SMPROGRAMS\GitHub, Inc\GitHub Desktop-BackupByGitHubDesktopPortable.lnk"
	${EndIf}
	${If} ${FileExists} "$PROFILE\.gitconfig"
		Rename "$PROFILE\.gitconfig" "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable"
	${EndIf}
	${If} ${FileExists} "$DOCUMENTS\GitHub\*.*"
		Rename "$DOCUMENTS\GitHub" "$DOCUMENTS\GitHub-BackupByGitHubDesktopPortable"
	${EndIf}
	${If} ${FileExists} "$APPDATA\GitHub Desktop\*.*"
		Rename "$APPDATA\GitHub Desktop" "$APPDATA\GitHub Desktop-BackupByGitHubDesktopPortable"
	${EndIf}
	${If} ${FileExists} "$EXEDIR\Data\GitHub\*.*"
		Rename "$EXEDIR\Data\GitHub" "$DOCUMENTS\GitHub"
	${EndIf}
	${If} ${FileExists} "$EXEDIR\Data\GitHub Desktop\*.*"
		Rename "$EXEDIR\Data\GitHub Desktop" "$APPDATA\GitHub Desktop"
	${EndIf}
!macroend
${SegmentPost}
	${If} ${FileExists} "$APPDATA\GitHub Desktop\*.*"
		Rename "$APPDATA\GitHub Desktop" "$EXEDIR\Data\GitHub Desktop"
	${EndIf}
	${If} ${FileExists} "$DOCUMENTS\GitHub\*.*"
		Rename "$DOCUMENTS\GitHub" "$EXEDIR\Data\GitHub"
	${EndIf}
	${If} ${FileExists} "$APPDATA\GitHub Desktop-BackupByGitHubDesktopPortable\*.*"
		Rename "$APPDATA\GitHub Desktop-BackupByGitHubDesktopPortable" "$APPDATA\GitHub Desktop"
	${EndIf}
	${If} ${FileExists} "$DOCUMENTS\GitHub-BackupByGitHubDesktopPortable\*.*"
		Rename "$DOCUMENTS\GitHub-BackupByGitHubDesktopPortable" "$DOCUMENTS\GitHub"
	${EndIf}
	${If} ${FileExists} "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable"
		Rename "$PROFILE\.gitconfig-BackupByGitHubDesktopPortable" "$PROFILE\.gitconfig"
	${EndIf}
	${If} ${FileExists} "$SMPROGRAMS\GitHub, Inc\GitHub Desktop-BackupByGitHubDesktopPortable.lnk"
		Rename "$SMPROGRAMS\GitHub, Inc\GitHub Desktop-BackupByGitHubDesktopPortable.lnk" "$SMPROGRAMS\GitHub, Inc\GitHub Desktop.lnk"
	${EndIf}
!macroend
