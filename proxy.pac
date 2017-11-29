function FindProxyForURL(url, host) {
  if (dnsDomainIs(host, 'alipay.cemarose.com')||dnsDomainIs(host, 'app.cemarose.com')||dnsDomainIs(host, 'cemarose.cn')||dnsDomainIs(host, 'cemarose.com')||dnsDomainIs(host, 'myshopify.com')||shExpMatch(url, "*.qnssl.com/*")) {
          return "PROXY 192.168.109.8:8888; PROXY 192.168.109.6:8888; DIRECT;";
  }
  return 'DIRECT;';
}
