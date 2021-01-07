package dog_MYF.notice.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class NoticeFileUpload
{
	Collection<Part> fileParts;
	String fileNames;
	String realPath;
	String path;
	String path_;
	InputStream fileIS;
	FileOutputStream fileOS;
	
	NoticeFileUpload(HttpServletRequest req)
	{
		try
		{
			this.fileParts = req.getParts();
		}
		catch (ServletException e)
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		fileNames = "";
		realPath = req.getServletContext().getRealPath("/");
		this.path = this.realPath.substring(0, this.realPath.indexOf("\\.metadata\\"));
		this.path += "\\KH-MEETYOURFAMILY\\WebContent\\dog_MYF\\notice\\upload";
		this.path += File.separator;
		this.path_ = "";
		this.fileIS = null;
		this.fileOS = null;
	}
	
	String getFileNames()
	{
		if(fileParts == null)
		{
			return null;
		}
		else
		{
			for(Part p : fileParts)
			{
				if(!p.getName().equals("file")) continue;
				if(p.getSize() == 0) continue;
	
//				Part filePart = p;
				
				UUID uuid = UUID.randomUUID();
				this.fileNames += uuid.toString() + "_" + p.getSubmittedFileName();
				this.fileNames += ",";
				this.fileNames += p.getSubmittedFileName();
				this.fileNames += "/";
				
				path_ = this.path + uuid.toString() + "_" +p.getSubmittedFileName();
				
				try
				{
					this.fileIS = p.getInputStream();
					this.fileOS = new FileOutputStream(path_);
					byte[] bf = new byte[1024];
					int bfRead;
					for(;;)
					{
						if((bfRead = this.fileIS.read(bf)) == -1)
						{
							break;
						}
						
						this.fileOS.write(bf, 0, bfRead);
					}
				}
				catch (IOException e)
				{
					e.printStackTrace();
				}
				finally
				{
					if (this.fileIS != null)	try { this.fileIS.close();	}	catch (Exception e) {}
					if (this.fileOS != null)	try { this.fileOS.close();	}	catch (Exception e) {}
				}
			}
		}
		this.fileNames = this.fileNames.substring(0, this.fileNames.length()-2);
		return this.fileNames;
		
		/*
		 * 
		 */
	}
	
}
