(defvar path (getenv "PWD")
  "tags root directory path.")

(defun update-tags (&optional extension)
  "Recreate tags and load tags table."
  (interactive)
  (message "path -%s" path)
  (eshell-command 
   (format "find %s -type f -iname \"*.[ch]\" | etags -o %s/TAGS -" path path))
  (visit-tags-table path))

(update-tags)
