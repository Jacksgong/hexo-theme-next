<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.footer.icon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
  {% endif %}
</div>

{% if theme.footer.powered %}
<div class="powered-by">
  {{ __('由') }}
  <a class="theme-link" href='https://hexo.io'>
    Hexo
  </a>
  与
  <a class="theme-link" href='http://theme-next.iissnan.com/'>
   NexT
  </a>
  强力驱动
</div>
<div class="theme-info">
  &ensp;|&ensp;
  <a class="theme-link" href='https://git.jacksgong.com/Jacksgong/Blog'>
    Jacksgong/Blog
  </a>
  &ensp;|&ensp;
  <a href='http://beian.miit.gov.cn'> 
    闽ICP备12012451号 
  </a>
</div>
{% endif %}
  
