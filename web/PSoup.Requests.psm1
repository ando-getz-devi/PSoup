Class SessionManager {

	function Request 
	{	
		param(  [Parameter(Mandatory = $true)] 
			[String]$url )

		$res = Invoke-WebRequest -uri $url

		Switch ($res.Status)
		{
			200 {return $res}
			403 {
				<#
				- UserAgent 
				- try curl
				- Proxy
				- IP BlackList
				- Invalid URL 
				- Invalid Credentials	
				#> 
			}
			default {
				# while ([IntSIGNAL] ~ #DEPENDANT ON ACTIVE SOCKETS  AND POOL SIZE - % + ){
				#	Request
				# } 
				# IF TIMOUT != TRUE 
			}
		
		}
	}

	function Init-Socket
	{

	}
	
	function Rotate-UserAgent{
		param( 
			@{}
		)
	}

	Class Socket ($conn) {
		[UserAgent] $USERAGENT

		function Throttle {
			<# Gives Session manager option to slow doown greedy sockets. #>
		}

		
	}

}

<# - CLASS -
	CLIENT SOCKET FACTORY
------------------------
METHOD -> THROTTLE / RATE LIMIT
<# 
----------------------------
---------DEV NOTES----------
----------------------------
EXAMPLE
- (ln 1) CASE 
- (ln 2) TEST CASE
- (ln 3) Strategy
----------------------------
-----------------------------
Conn Timeout -> 
Firewall | Proxy | Browser Cache | Cookies | Check Amount of Conncurrent Cons | Bandwidth Throttle 
-------------------------------
No Internet Connection ->
Retry
-------------------------------
(ENCSURE GREEN EXEC POLICY)
#>
