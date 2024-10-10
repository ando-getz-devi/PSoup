
Class UserAgent {
	[String]$Active
	[String[]]$UserAgents

	function Rotate{
		param(@{})
	}
}


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

	function Curl-It 
	{


	}

	Class Socket{
		[UserAgent] $USERAGENT

		Socket() {
			
		}
		function Throttle {
			<# Gives Session manager option to slow doown greedy sockets. #>
		}

		
	}

}

