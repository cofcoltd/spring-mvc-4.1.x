package com.web.util;

import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.collections.MultiMap;
import org.apache.commons.collections.map.MultiValueMap;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;

public class FormUtil {

	// �����ϴ��ļ����Ϊ 3M
	private static final long MAX_SIZE = 30* 1024 * 1024;
	// �����ϴ����ļ���ʽ���б�

	private static final String[] ALLOW_TYPE = new String[] { "image/bmp", "image/x-png",
			"image/png", "image/gif", "image/jpeg", "image/jpg", "image/pjpeg" };

	/**
	 * 
	 * @param request
	 * @param context
	 * @param clazz     //Ҫ��װ���������ͣ��ʹ����౾�� . 
	 * @param filePath
	 * @return Object
	 *  �÷�����������ļ��ϴ��������������ļ��ϴ������ܽ��ձ?�����д󲿷ֿؼ� ע����Ϣ ������װ�� Bean ���� ʵ����������� POJO ��Ĳ�����
	 */
	@SuppressWarnings({ "deprecation", "unchecked" })
	public Object getInstanceByAdvanceForm( HttpServletRequest request , ServletContext context , Class<?> clazz , String filePath ) {
		
		Object object = null ; 

		DiskFileItemFactory factory = new DiskFileItemFactory();	
		factory.setSizeThreshold(20 * 1024 * 1024); //���û�����
		factory.setRepository(new File(request.getRealPath(filePath))); //����ͼƬ����λ��

		//�ļ��ϴ��Ĺ�����
		ServletFileUpload handler = new ServletFileUpload(factory);
		handler.setSizeMax(MAX_SIZE);// �����ļ��ϴ������ߴ�
		handler.setHeaderEncoding("utf-8"); //����ͷ�ļ��ı��뷽ʽ��
		
		// MultiMap ��һ�� Map ֮�������ṹ������һ�������Ŷ��ֵ���ֲ���ԭ�� Map �Ĳ��㣬
		//���?�ؼ�����һЩͬ��Ŀؼ�ֵ����Ҫ��һ��key �����ʱ�����ٺ��ʲ����ѡ��
		MultiMap  components =new MultiValueMap();
		
		Map<String , Object> paramsMap = new HashMap<String , Object>();
		
		try {
		
			List<FileItem> files = handler.parseRequest(request);
			Iterator<FileItem> it = files.iterator();

			while (it.hasNext()) {
				FileItem item = it.next();
				
				if (item.isFormField()) { 
					components.put( item.getFieldName() , item.getString("utf-8"));
				}else {
					//ͬѧ�ǿ����ڴ˴� ��Ƕϵ� �� ������һ���ϴ��ļ�������
					if(ArrayUtils.contains( ALLOW_TYPE , item.getContentType() )) {  
						String filename = item.getName();  

						File file = new File(filename);	
						File filetoserver = new File( context.getRealPath(filePath) , file.getName() );
						item.write(filetoserver);
						
						String filetodb =request.getContextPath()+"/"+filePath+"/"+ filename.substring(filename.lastIndexOf("\\")+1);
						
						components.put( item.getFieldName() , filetodb );
						
					}else {
						return null;
					}
				}
			}

			paramsMap = convertParmas(components);
			
			object = clazz.newInstance();   
			BeanUtils.populate(object, paramsMap);
			
		} catch (Exception e) {
			e.printStackTrace();		
		}
		return object;
	}

	//�?��û�ж������ļ��ϴ���ʱ�򣬿���Ӧ�ô˷�����
	public Object getInstanceBySimpleForm( HttpServletRequest request , Class<?> clazz ) {
		Object object = null;
		try {
			
			object = clazz.newInstance();
			Map<String,String[]> parameterMap = request.getParameterMap();
			Map<String , Object > params = new HashMap<String,Object>();
			
			for (Iterator<String> iterator = parameterMap.keySet().iterator(); iterator.hasNext();) {
				
				String key = iterator.next();
				String[] values = parameterMap.get(key);
				if(values.length>=1) {
					String context = 	StringUtils.join(values ,",");
					params.put(key, context);
					continue;
				}
				params.put(key, values[0]);
			}
			
			BeanUtils.populate( object , params );
			
			return object;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return object;
	}
	
	
	//�÷��������ڣ�����һ����Ʒ��Ҫ�޸Ĳ�ƷͼƬ������������Ϣû��Ҫ�޸�ʱ����ֻ�����ϴ��ļ����������µ�·�����ɡ�
	public String UpdateFile( HttpServletRequest request , ServletContext context , String filePath ) {
		
		DiskFileItemFactory factory = new DiskFileItemFactory();	
		factory.setSizeThreshold(20 * 1024 * 1024); 
		factory.setRepository(new File(request.getRealPath(filePath))); //����ͼƬ����λ��

		//�ļ��ϴ��Ĺ�����
		ServletFileUpload handler = new ServletFileUpload(factory);
		handler.setSizeMax(MAX_SIZE);// �����ļ��ϴ������ߴ�
		handler.setHeaderEncoding("utf-8"); //����ͷ�ļ��ı��뷽ʽ��
		
		try {
			//����ͼƬ��·��
			StringBuilder url = new StringBuilder("");
			
			//���?�����пؼ�����ŵ� List ������ , ����ÿ���ؼ������Ͷ�Ϊ FileItem
			List<FileItem> files = handler.parseRequest(request);
			
			Iterator<FileItem> it = files.iterator();

			while (it.hasNext()) {
				FileItem item = it.next();

				if (!item.isFormField()) {
					if(ArrayUtils.contains( ALLOW_TYPE , item.getContentType() )) {
						
						String filename = item.getName();  
					
						File file = new File(filename);	
						File filetoserver = new File( context.getRealPath(filePath) , file.getName() );
						
						item.write(filetoserver);
		
						String filetodb =request.getContextPath()+"/"+filePath+"/"+ filename.substring(filename.lastIndexOf("\\")+1);
						url.append(filetodb).append(",");
						
						
					}else {
						return null;
					}
				}
			}
			System.out.println(url.toString());
			return url.deleteCharAt(url.lastIndexOf(",")).toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//�� MultiMap ת���� ԭ��� Map
	private Map<String , Object> convertParmas( MultiMap components ) {
		
		Map<String , Object >  params = new HashMap<String , Object>();
		
		Set keySet = components.keySet();
		
		Iterator keyIterator = keySet.iterator();
		
		while(keyIterator.hasNext()) {
			String key = (String)keyIterator.next();
			
			Collection<Object> values = (Collection<Object>)components.get(key);

			Iterator<Object> valuesIterator = values.iterator();

			if(values.size()<=1) { 
				params.put((String)key,valuesIterator.next());
			}else {
				StringBuilder builder = new StringBuilder();
				while(valuesIterator.hasNext()){
					builder.append(valuesIterator.next()).append(",");
				}

				String builder_str = builder.deleteCharAt(builder.lastIndexOf(",")).toString();
				params.put((String)key, builder_str);
			}
		}
		return params;
	}
	
}
