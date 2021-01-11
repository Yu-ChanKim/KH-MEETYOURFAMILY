package dog_MYF.post.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class PostFileUpload {
	Collection<Part> fileParts;
	String fileNames;
	String realPath;
	String path;
	String path_;
	InputStream fileIS;
	FileOutputStream fileOS;
	String myfPath;

	PostFileUpload(HttpServletRequest req) {
		try {
			this.fileParts = req.getParts();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		fileNames = "";
		this.myfPath = "/dog_MYF/post/upload";

		realPath = req.getServletContext().getRealPath(this.myfPath);

		this.path = realPath;
		newPath(this.realPath);

		this.path += File.separator;
		this.path_ = "";
		this.fileIS = null;
		this.fileOS = null;
	}

	void newPath(String realPath) {
		File newPath = new File(realPath);
		if (!newPath.exists()) {
			newPath.mkdirs();
		}
	}

	String getFileNames() {
		if (fileParts.size() == 0) {
			return null;
		} else {
			for (Part p : fileParts) {
				if (!p.getName().equals("file"))
					continue;
				if (p.getSize() == 0)
					continue;

//				Part filePart = p;

				UUID uuid = UUID.randomUUID();
				this.fileNames += this.myfPath + "/" + uuid.toString() + "_" + p.getSubmittedFileName();
				this.fileNames += ",";
				this.fileNames += p.getSubmittedFileName();
				this.fileNames += ":";

				path_ = this.path + uuid.toString() + "_" + p.getSubmittedFileName();

				try {
					this.fileIS = p.getInputStream();
					this.fileOS = new FileOutputStream(path_);
					byte[] bf = new byte[1024];
					int bfRead;
					for (;;) {
						if ((bfRead = this.fileIS.read(bf)) == -1) {
							break;
						}
						this.fileOS.write(bf, 0, bfRead);
					}
				} catch (IOException e) {
					e.printStackTrace();
				} finally {
					if (this.fileIS != null)
						try {
							this.fileIS.close();
						} catch (Exception e) {
						}
					if (this.fileOS != null)
						try {
							this.fileOS.close();
						} catch (Exception e) {
						}
				}
			}
			if (this.fileNames.length() > 0) {
				this.fileNames = this.fileNames.substring(0, this.fileNames.length() - 1);
			}
		}
		return this.fileNames;

		/*
		 * 
		 */
	}

}
