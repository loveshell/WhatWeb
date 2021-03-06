##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "cInvoice" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-07-06
version "0.1"
description "Forperfect cInvoice system - web-based invoice system. Requires PHP and MySQL. - Homepage: http://www.forperfect.com/seo/cinvoice.php"

# Google results as at 2011-07-06 #
# 37 for "Powered by cInvoice system"

# Dorks #
dorks [
'"Powered by cInvoice system"'
]

# Examples #
examples %w|
www.eztekmedia.com/eztekinvoicecenter/
behanconsulting.com/services/cinvoice/
www.jpwdesigns.com/billing/
oceaniamed.biz/register.php
secure149.hostgator.com/~cipvill/cinvoice/index.php
invoice.discos.co.uk
www.fleitescomputers.com/cinvoice/
www.247computersolution.com/invoice/
blue-development.com
billing.whymandev.com/resetpassword.php
www.finanpyme.es/facturacion/
administratie.niv.nl
works.dualweb.it/fatture/
|

# Matches #
matches [

# Version Detection # Powered by footer
{ :version=>/<small>Powered by <a href="http:\/\/www\.forperfect\.com\/" class="footerlink">cInvoice system ([\d\.]+)<\/a><\/small>/ },

# Footer table + td class=copyright
{ :regexp=>/\/images\/footer_bg\.gif" width="[\d]{2}%" align="center" cellspacing="1" cellpadding="1"><td class=copyright align="center">/ },

]

end

