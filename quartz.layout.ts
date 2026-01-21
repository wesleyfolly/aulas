import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  afterBody: [],
  footer: Component.Footer({ links: {} }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.ConditionalRender({
      component: Component.Breadcrumbs(),
      condition: (page) => !page.fileData.slug?.endsWith("index"),
    }),
    Component.ConditionalRender({
      component: Component.ArticleTitle(),
      condition: (page) => !page.fileData.slug?.endsWith("index"),
    }),
    Component.ConditionalRender({
      component: Component.ContentMeta(),
      condition: (page) => !page.fileData.slug?.endsWith("index"),
    }),
    Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Flex({
      components: [
        {
          Component: Component.Search(),
          grow: true,
        },
        { Component: Component.Darkmode() },
        { Component: Component.ReaderMode() },
      ],
    }),
    Component.Explorer({
      title: "",
      folderDefaultState: "collapsed",
      filterFn: (node) => {
        // Ocultar pasta Recursos da navegação, mas manter arquivos acessíveis via links
        return node.slugSegment !== "tags" && node.slugSegment !== "Recursos"
      },
    }),
  ],
  right: [
    Component.Graph(),
    Component.DesktopOnly(Component.TableOfContents()),
    Component.Backlinks(),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(),
    Component.ConditionalRender({
      component: Component.ArticleTitle(),
      condition: (page) => !page.fileData.slug?.endsWith("index"),
    }),
    Component.ConditionalRender({
      component: Component.ContentMeta(),
      condition: (page) => !page.fileData.slug?.endsWith("index"),
    }),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Flex({
      components: [
        {
          Component: Component.Search(),
          grow: true,
        },
        { Component: Component.Darkmode() },
      ],
    }),
    Component.Explorer({
      title: "",
      folderDefaultState: "collapsed",
      filterFn: (node) => {
        // Ocultar pasta Recursos da navegação, mas manter arquivos acessíveis via links
        return node.slugSegment !== "tags" && node.slugSegment !== "Recursos"
      },
    }),
  ],
  right: [],
}
