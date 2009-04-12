(defvar emms2-version "0.01"
  "EMMS2 version string.")

;;; User Customization

(defgroup emms2 nil
  "*The Emacs Multimedia System with XMMS2."
  :prefix "emms2-"
  :group 'multimedia
  :group 'applications)

;;; User Interface

(defun emms2-add-song ()
  "Adss a song to the playlist"
  (interactive)
  (let ((filename (file-truename (read-file-name "file :" "~/" nil t))))
    (if (file-regular-p filename)
	(start-process "xmms2" nil "xmms2" "add" filename))))

(defun emms2-add-directory ()
  "Adss a directory to the playlist"
  (interactive)
  (let ((filename (file-truename (read-file-name "directory :" "~/" nil t))))
    (if (file-directory-p filename)
	(start-process "xmms2" nil "xmms2" "radd" filename))))

(defun emms2-clear ()
  "Clears the current playlist"
  (interactive)
  (start-process "xmms2" nil "xmms2" "clear"))

(defun emms2-play ()
  "Start playing the current track in the EMMS playlist."
  (interactive)
  (start-process "xmms2" nil "xmms2" "play"))

(defun emms2-stop ()
  "Stop any current EMMS playback."
  (interactive)
  (start-process "xmms2" nil "xmms2" "stop"))

(defun emms2-next ()
  "Start playing the next track in the EMMS playlist."
  (interactive)
  (start-process "xmms2" nil "xmms2" "next"))

(defun emms2-previous ()
  "Start playing the previous track in the EMMS playlist."
  (interactive)
  (start-process "xmms2" nil "xmms2" "prev"))

(defun emms2-pause ()
  "Pause the current player."
  (interactive)
  (start-process "xmms2" nil "xmms2" "pause"))

(defun emms2-shuffle ()
  "Shuffle the current playlist."
  (interactive)
  (start-process "xmms2" nil "xmms2" "shuffle"))

(provide 'emms2)
;;; emms2.el ends here
