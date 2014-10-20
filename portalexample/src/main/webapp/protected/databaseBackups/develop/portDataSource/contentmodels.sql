INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10005, 'ANN', 'Full - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("EEEE dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h1>$content.Title.text</h1>
#if ($content.Summary.text != "")
$content.Summary.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h2>$i18n.getLabel("ANN_DOCUMENTS")</h2>
  <ul>
    #foreach ($attach in $content.Documents)
    <li><a href="$attach.attachPath">$attach.text</a></li>
    #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10051, 'ANN', 'Lists - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("ANN_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10003, 'DLD', 'Full - Default', '<article>
<h1>$content.Title.text</a></h1>
#if($content.categories.size() >= 1)
<p><span class="label">$i18n.getLabel("DLD_CATEGORIES"):</span>
#foreach($categ in $content.categories)
<span class="label label-info">$categ.title</span>
#end
</p>
#end
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.LongDescr.text != "" )
$content.LongDescr.text
#end
<p><a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10031, 'DLD', 'Lists - Default', '<article>
<h2>$content.Title.text</h2>
$content.ShortDescr.text
<p class="btn-group">
  <a class="btn" href="$content.contentLink">$i18n.getLabel("DLD_GET_INFO")&nbsp;<i class="icon-info-sign"></i></a>
  <a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a>
</p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10001, 'CNG', 'Full - Default', '<article>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10011, 'CNG', 'Lists - Default', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10012, 'CNG', 'Hero Unit + Picture', '<article>
  <div class="hero-unit span6">
  <h1>$content.Title.text</h1>
  #if ( $content.Abstract.text != "" )
  $content.Abstract.text
  #end
  #if ( $content.Links.size() != 0 )
  #set ( $link = $content.Links.get(0) )
  <p><a href="$link.destination" class="btn btn-primary btn-large">$link.text</a></p>
  #end
</div>
#if ( $content.Picture.getImagePath("0") != "" )
<div class="span4 well well-small">
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
</div>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10013, 'CNG', 'Lists - Picture', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Picture.getImagePath("0") != "" )
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10002, 'NWS', 'Full - Default', '<article>
  <p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("NWS_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("NWS_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10004, 'RSL', 'Full - Default', '<article>
<p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Number.value &ndash; $content.Date.getFormattedDate("yyyy.MM.dd")</time></p>
<h1>$content.Title.text</h1>
#if ($content.Summary.text != "")
$content.Summary.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h2>$i18n.getLabel("RSL_DOCUMENTS")</h2>
  <ul>
    #foreach ($attach in $content.Documents)
    <li><a href="$attach.attachPath">$attach.text</a></li>
    #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10041, 'RSL', 'Lists - Default', '<article>
<h2><a href="$content.contentLink">$content.Number.value &ndash; $content.Date.getFormattedDate("yyyy.MM.dd")</a></h2>
<p>$content.Title.text</p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10021, 'NWS', 'Lists - Default', '<article>
<p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("NWS_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10014, 'CNG', 'Full - Picture Left', '<article>
  <h1>$content.Title.text</h1>
<div class="row"><div class="span4">
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="text-center">
  <img class="img-polaroid" src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
</div>
<div class="span8 margin-medium-top">
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
  </div></div>
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
