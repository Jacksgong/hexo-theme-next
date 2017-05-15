<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

{% if theme.copyright %}
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
  {{ __(' 开源') }} -
  <a class="theme-link" href='https://github.com/Jacksgong/Blog'>
    Jacksgong/Blog
  </a>
</div>
{% endif %}
