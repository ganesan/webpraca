module JobsHelper
	def job_label(job)
		html = ""
		html += etykieta(job.type_id)
		html += content_tag :abbr, "Praca zdalna", :class => "etykieta zdalnie" if job.remote_job
		
		return html
	end
	
	def etykieta(type_id)
		content_tag :abbr, JOB_LABELS[type_id], :class => "etykieta #{JOB_LABELS[type_id]}", :title => JOB_TYPES[type_id]
	end
	
	def format_rank(rank)
		((rank*10).round/10.0).to_s.gsub('.', ',')
	end
	
end