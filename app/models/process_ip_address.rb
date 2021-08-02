class ProcessIpAddress < ApplicationRecord
    REGEX_IP = /\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4}\b/

    def public.is_valid_ip(ip)
        if ip.kind_of?(Array)
            is_valid = true
            ip.each do |ip|
                if !is_valid_ip(ip) 
                    is_valid = false
                end
            end
            is_valid
        else
            ip =~REGEX_IP
        end
    end
end
