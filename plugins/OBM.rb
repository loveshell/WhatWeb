##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "OBM" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-12-28
version "0.1"
description "OBM is a free messaging and collaboration software including Groupware, Messaging, CRM, LDAP, Domain management, Smartphones and PDA synchronization - Homepage: http://obm.org/"

# ShodanHQ results as at 2011-12-28 #
# 4 for OBM_Session

# Google results as at 2011-12-28 #
# 16 for intitle:"Login - OBM" "OBM.org"

# Dorks #
dorks [
'intitle:"Login - OBM" "OBM.org"'
]

# Examples #
examples %w|
obm.medysys.com
fosps.force-ouvriere.fr
intranet.crous-creteil.fr/obm/php/obm.php
www.environnement-auxerre.fr
agenda.fhsarl.com
obm.docubase.com/deal/deal_index.php
https://demo.obm.org/
https://mail.cg973.fr/
https://obm.legos.obs-mip.fr/
https://obm.asso-croizat.org/calendar/calendar_index.php
https://extranet.weishardt.com/obm/
|

# Matches #
matches [

# Login Page # Title # Version Detection
{ :certainty=>75, :version=>/<title>Login - OBM ([^\s^<]+)<\/title>/ },

# Login Page # body + p tags and omb.org link
{ :regexp=>/<body>[\s]+[\s]+<p id="aliasource">[\s]+<a href="http:\/\/www\.obm\.org">OBM\.org<\/a>[\s]+<\/p>[\s]+<h1>/ },

# Set-Cookie # OBM_Session
{ :search=>"headers[set-cookie]", :regexp=>/OBM_Session=[\s]+;/ },

]

end

